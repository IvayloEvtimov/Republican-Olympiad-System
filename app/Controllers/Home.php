<?php

namespace App\Controllers;

use function App\Helpers\select_olymp_team;
use function App\Helpers\select_olymp_team_participate;
use function App\Helpers\select_olympiads;
use function App\Helpers\select_participating_unis;
use function App\Helpers\select_team_participants;
use function App\Helpers\select_unis;

class Home extends BaseController
{
    public function index()
    {
        helper(['html', 'db_query_helper']);
        $link = [
            'href'  => 'public/css/styles.css',
            'rel'   => 'stylesheet',
            'type'  => 'text/css',
        ];

        $tableSettings = [
            'table_open' => '<table class="table center" >'
        ];

        $table = new \CodeIgniter\View\Table();
        $table->setTemplate($tableSettings);
        $table->setHeading("Олимпиада", "Година", "Домакин", "Град", "Брой участващи университети", "Източник");

        $olympiads = select_olympiads();

        foreach ($olympiads as $row) {
            $unis = select_participating_unis($row['short_name']);
            $table->addRow("<a href='olympiad/$row[short_name]'>$row[short_name]</a>", $row['date'], $row['host'], $row['city'], $unis, "<a href='$row[url]'>$row[url]</a>");
        }

        $data = [
            'link' => $link,
            'table' => $table,
        ];

        return view("index", $data);
    }

}
