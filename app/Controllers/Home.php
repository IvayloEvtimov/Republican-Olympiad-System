<?php

namespace App\Controllers;

use function App\Helpers\select_olymp_team;
use function App\Helpers\select_olympiads;
use function App\Helpers\select_participating_members;
use function App\Helpers\select_participating_unis;
use function App\Helpers\select_team_coaches;

class Home extends BaseController
{
    const LINKS = array(
        'style_link' => array(
            'href' => 'public/css/styles.css'
        ),
        'gstatic_link' => array(
            'href' => 'https://fonts.gstatic.com',
            'rel' => 'preconnect'
        ),
        'font_link' => array(
            'href' => 'https://fonts.googleapis.com/css2?family=Poppins:wght@100&display=swap'
        )
    );

    public function index($olympiad = null)
    {
        helper(['html', 'db_query_helper']);

        $header_string = "";
        if ($olympiad != null) {
            $base = base_url("public/olympiad/$olympiad");
            $header_string = "<a href='$base'>Отбори</a>";
        } else {
            $header_string = "<a href=''>Олимпиади</a>";
        }

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
            'link' => Home::LINKS['style_link'],
            'gstatic_link' => HOME::LINKS['gstatic_link'],
            'font_link' => HOME::LINKS['font_link'],
            'table' => $table,
            'olympiad' => $header_string,
        ];

        return view("index", $data, ['saveData' => true]);
    }

    public function olympiad($id)
    {
        helper(['html', 'db_query_helper']);

        $tableSettings = [
            'table_open' => '<table class="table center" >'
        ];

        $table = new \CodeIgniter\View\Table();
        $table->setTemplate($tableSettings);
        $table->setHeading("№ на отбор", "Университет", "Участници", "Ръководител", "Решени Задачи", "Време");

        $data = [
            'link' => Home::LINKS['style_link'],
            'gstatic_link' => HOME::LINKS['gstatic_link'],
            'font_link' => HOME::LINKS['font_link'],
            'table' => $table,
            'olympiad' => base_url("public/home/$id"),
        ];

        $teams = select_olymp_team($id);
        $count = 1;

        foreach ($teams as $row) {
            $participants = ol(select_participating_members($id, $row['name']));
            $coaches = ol(select_team_coaches($id, $row['name']));

            $table->addRow("$count. $row[name]", $row['university'], $participants, $coaches, $row['completed_tasks'], $row['time_taken']);
            ++$count;
        }

        return view("olympiad", $data, ['saveData' => true]);
    }
}
