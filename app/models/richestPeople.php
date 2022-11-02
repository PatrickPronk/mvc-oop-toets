<?php


class richestPeople
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getRichestPeoples()
    {
        $this->db->query('SELECT * FROM richestpeople');
        $result = $this->db->resultSet();
        return $result;
    }

    public function deleteRichestPeople($Id)
    {
        $this->db->query("DELETE FROM richestpeople WHERE Id = :Id");
        $this->db->bind("Id", $Id, PDO::PARAM_INT);
        return $this->db->execute();
    }
}
