<?php

namespace App\Helpers;

use CodeIgniter\Database\Query;

function select_unis()
{
	$db = db_connect();
	$query = $db->query('SELECT
							*
						FROM
							university');

	if (!$db->error())
	{
		throw new \CodeIgniter\Database\Exceptions\DatabaseException();
	}

	$arr = $query->getResultArray();
	$db->close();

	return $arr;
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
