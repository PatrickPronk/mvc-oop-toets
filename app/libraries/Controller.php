<?php

class Controller
{
    public function model($model)
    {
        // pad naar het model opgeven
        require_once '../app/models/' . $model . '.php';

        // nieuw object van model
        return new $model();
    }

    public function view($view, $data = [])
    {
        if (file_exists('../app/views/' . $view . '.php')) {
            require_once('../app/views/' . $view . '.php');
        } else {
            die('View bestaat niet');
        }
    }
}
