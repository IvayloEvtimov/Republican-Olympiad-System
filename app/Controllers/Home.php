<?php

namespace App\Controllers;

use function App\Helpers\select_olymp_team;
use function App\Helpers\select_olymp_team_participate;
use function App\Helpers\select_olympiads;
use function App\Helpers\select_participating_members;
use function App\Helpers\select_participating_unis;
use function App\Helpers\select_team_coaches;
use function App\Helpers\select_team_participants;
use function App\Helpers\select_unis;

class Home extends BaseController
{
    public function index()
    {
        helper(['html', 'db_query_helper']);

        $link = ['href'  => 'public/css/styles.css'];

        $gstatic_link = [
            'href' => 'https://fonts.gstatic.com',
            'rel' => 'preconnect',
        ];

        $font_link = ['href' => 'https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap'];
        $tableSettings = [
            'table_open' => '<table class="table center" >'
        ];

        $table = new \CodeIgniter\View\Table();
        $table->setTemplate($tableSettings);
        $table->setHeading("Олимпиада", "Година", "Домакин", "Град", "Брой участващи университети", "Източник");

        $olympiads = select_olympiads();
        foreach ($olympiads as $row) {
            $year = array();
            preg_match("/\d{4}/", $row['date'], $year);

            $unis = select_participating_unis($row['short_name']);
            $base = base_url("public/olympiad/$row[short_name]");
            $table->addRow("<a href='$base'>$row[short_name]</a>", $year[0], $row['host'], $row['city'], $unis, "<a href='$row[url]'>$row[url]</a>");
        }

        $data = [
            'link' => $link,
            'gstatic_link' => $gstatic_link,
            'font_link' => $font_link,
            'table' => $table,
        ];

        return view("index", $data);
    }

    public function olympiad($id)
    {
        helper(['html', 'db_query_helper']);
        $link = ['href'  => 'public/css/styles.css'];

        $gstatic_link = [
            'href' => 'https://fonts.gstatic.com',
            'rel' => 'preconnect',
        ];

        $font_link = ['href' => 'https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap'];

        $tableSettings = [
            'table_open' => '<table class="table center" >'
        ];

        $table = new \CodeIgniter\View\Table();
        $table->setTemplate($tableSettings);
        $table->setHeading("№ на отбор", "Университет", "Участници", "Ръководител", "Решени Задачи", "Време");

        $data = [
            'link' => $link,
            'table' => $table,
        ];

        $teams = select_olymp_team($id);
        $count = 1;

        foreach ($teams as $row) {
            $participants = ol(select_participating_members($id, $row['name']));
            $coaches = ol(select_team_coaches($id, $row['name']));

            $table->addRow("$count. $row[name]", $row['university'], $participants, $coaches, $row['completed_tasks'], $row['time_taken']);
            ++$count;
        }

        return view("olympiad", $data);
    }
}
