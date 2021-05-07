# Republican-Olympiad-System

## Prerequisite
* Apache 2.4+
* PHP 74+
  * intl extension enabled
* MySQL 8+
* Composer

## How to start

* Clone into Apache web root
* Install PHP addons: `composer install`
* Create database and user  
 ```shell
 mysql -u root -e "DROP DATABASE IF EXISTS republican_olympiad;"
 mysql -u root -e "CREATE DATABASE republican_olympiad;"
 mysql -u root -p republican_olympiad < $PATH_TO_PROJECT/database/republican_olympiad.sql
 mysql -u root -e "CREATE USER IF NOT EXISTS 'republican_olympiad'@'localhost' IDENTIFIED BY 'republican_olympiad';"
 mysql -e root -e "GRANT ALL PRIVILEGES ON 'republican_olympiad'.* TO 'republican_olympiad'@'localhost';"
 ```
* Run with Apache 2.4+

## File structure

* app/
  * Config/
  * Controllers/
  * Database/
  * Filters/
  * Language/
  * Libraries/
  * Views/
* database/
* public/
* writable/
