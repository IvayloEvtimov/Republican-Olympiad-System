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

function select_one_uni($uni)
{
	$db = db_connect();

	$pQuery = $db->prepare(function ($db)
	{
		$sql = 'SELECT
					*
				FROM
					university
				WHERE
					short_form=?';
		return (new Query($db))->setQuery($sql);
	});

	$result = $pQuery->execute($uni);

	if ($pQuery->hasError()) {
		throw new \CodeIgniter\Database\Exceptions\DatabaseException();
	}

	$arr = $result->getResultArray();
	$db->close();

	return $arr;
}

function select_olympiads()
{
	$db = db_connect();
	$query = $db->query('SELECT
							*
						FROM
							olympiad');

	if (!$db->error()) 
	{
		throw new \CodeIgniter\Database\Exceptions\DatabaseException();
	}

	$arr = $query->getResultArray();
	$db->close();

	return $arr;
}

function select_one_olympiad($olympiad)
{
	$db = db_connect();

	$pQuery = $db->prepare(function ($db)
	{
		$sql = 'SELECT
					*
				FROM
					olympiad
				WHERE
					short_name=?';
		return (new Query($db))->setQuery($sql);
	});

	$result = $pQuery->execute($olympiad);

	if ($pQuery->hasError())
	{
		throw new \CodeIgniter\Database\Exceptions\DatabaseException();
	}

	$arr = $result->getResultArray();
	$db->close();

	return $arr;
}

function select_olymp_team_participate($olympiad)
{
	$db = db_connect();

	$pQuery = $db->prepare(function ($db)
	{
		$sql = 'SELECT DISTINCT
					participate.team,
					person.* 
				FROM
					participate
				LEFT JOIN team ON participate.team = team.name
				INNER JOIN person ON participate.member = person.pid
				WHERE
					participate.olympiad = ?';

		return (new Query($db))->setQuery($sql);
	});

	$result = $pQuery->execute($olympiad);

	if ($pQuery->hasError())
	{
		throw new \CodeIgniter\Database\Exceptions\DatabaseException();
	}

	$arr = $result->getResultArray();
	$db->close();

	return $arr;
}

function select_ranking_olymp($olympiad)
{
	$db = db_connect();

	$pQuery = $db->prepare(function ($db)
	{
		$sql = 'SELECT
					*
				FROM
					`submission`
				WHERE
					`submission`.`olympiad` = ?
				ORDER BY
					`submission`.`completed_tasks`
				DESC ,
					`submission`.`time_taken`
				DESC';
		return (new Query($db))->setQuery($sql);
	});

	$result = $pQuery->execute($olympiad);

	if ($pQuery->hasError())
	{
		throw new \CodeIgniter\Database\Exceptions\DatabaseException();
	}

	$arr = $result->getResultArray();
	$db->close();

	return $arr;
}