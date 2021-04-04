<?php

namespace App\Helpers;

use CodeIgniter\Database\Query;

function select_olympiads()
{
    $db = db_connect();
    $query = $db->query('SELECT
                            olympiad.*,
                            university.city
                        FROM
                            olympiad
                        LEFT JOIN university ON olympiad.host = university.short_form');

    if (!$db->error()) {
        throw new \CodeIgniter\Database\Exceptions\DatabaseException();
    }

    $arr = $query->getResultArray();
    $db->close();

    return $arr;
}

function select_participating_unis($olympiad)
{
    $db = db_connect();

    $pQuery = $db->prepare(function ($db) {
        $sql = 'SELECT
                    COUNT(DISTINCT team.university) as uni_count
                FROM
                    submission
                INNER JOIN team ON submission.team = team.name
                WHERE
                    submission.olympiad = ?';
        return (new Query($db))->setQuery($sql);
    });

    $result = $pQuery->execute($olympiad);

    if ($pQuery->hasError()) {
        throw new \CodeIgniter\Database\Exceptions\DatabaseException();
    }

    $arr = $result->getResultArray();
    $db->close();

    return $arr[0]['uni_count'];
}

function select_olymp_team($olympiad)
{
    $db = db_connect();

    $pQuery = $db->prepare(function ($db) {
        $sql = 'SELECT
                    team.*
                FROM
                    team
                INNER JOIN submission ON submission.team = team.name
                WHERE
                    submission.olympiad = ?';

        return (new Query($db))->setQuery($sql);
    });

    $result = $pQuery->execute($olympiad);

    if ($pQuery->hasError()) {
        throw new \CodeIgniter\Database\Exceptions\DatabaseException();
    }

    $arr = $result->getResultArray();
    $db->close();

    return $arr;
}

function select_participating_members($olympiad, $team)
{
    $db = db_connect();

    $pQuery = $db->prepare(function ($db) {
        $sql = 'SELECT
                    CONCAT(person.first_name, " ", person.last_name) as name
                FROM
                    participate
                INNER JOIN person ON participate.member = person.pid
                WHERE
                    participate.olympiad = ? AND participate.team = ?';

        return (new Query($db))->setQuery($sql);
    });

    $result = $pQuery->execute($olympiad, $team);

    if ($pQuery->hasError()) {
        throw new \CodeIgniter\Database\Exceptions\DatabaseException();
    }

    $arr = $result->getResultArray();
    $db->close();

    $final_res = array();
    foreach ($arr as $row) {
        array_push($final_res, $row['name']);
    }

    return $final_res;
}

function select_team_coaches($olympiad, $team)
{
    $db = db_connect();

    $pQuery = $db->prepare(function ($db) {
        $sql = 'SELECT
                    CONCAT( person.first_name, " ", person.last_name) AS name
                FROM
                    team_olympiad_leader
                INNER JOIN team ON team_olympiad_leader.university = team.university
                INNER JOIN person ON team_olympiad_leader.leader = person.pid
                WHERE
                    team_olympiad_leader.olympiad = ? AND team.name = ?';

        return (new Query($db))->setQuery($sql);
    });

    $result = $pQuery->execute($olympiad, $team);

    if ($pQuery->hasError()) {
        throw new \CodeIgniter\Database\Exceptions\DatabaseException();
    }

    $arr = $result->getResultArray();
    $db->close();

    $final_res = array();
    foreach ($arr as $row) {
        array_push($final_res, $row['name']);
    }

    return $final_res;
}

function select_ranking_olymp($olympiad)
{
    $db = db_connect();

    $pQuery = $db->prepare(function ($db) {
        $sql = 'SELECT
                    *
                FROM
                    submission
                WHERE
                    submission.olympiad = ?
                ORDER BY
                    submission.completed_tasks
                DESC ,
                    submission.time_taken
                DESC';
        return (new Query($db))->setQuery($sql);
    });

    $result = $pQuery->execute($olympiad);

    if ($pQuery->hasError()) {
        throw new \CodeIgniter\Database\Exceptions\DatabaseException();
    }

    $arr = $result->getResultArray();
    $db->close();

    return $arr;
}
