<?php

class Landingpages extends Controller
{
    public function __construct()
    {
    }

    public function index()
    {
        echo '<p3>Dit is de mvc-oop-toers homepage</p3>';
        echo '<br></br>';
        echo '<a href="/richestpeoples/index">Ga naar Richest People</a>';
    }
}