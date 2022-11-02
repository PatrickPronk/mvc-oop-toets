<?php

class richestPeoples extends Controller
{
   private $richestPeopleModel;

   public function __construct()
   {
      $this->richestPeopleModel = $this->model('richestPeople');
   }

   public function index()
   {
      $records = $this->richestPeopleModel->getRichestPeoples();


      $rows = '';

      foreach ($records as $value) {
         $rows .= "<tr>
                     <td>$value->Name</td>
                     <td>$value->NetWorth</td>
                     <td>$value->Age</td>
                     <td>$value->MyCompany</td>
                     <td><a href='" . URLROOT . "/richestpeoples/delete/$value->Id'>Delete</a></td>
                   </tr>";
      }

      $data = [
         'title' => "All Richest People",
         'rows' => $rows
      ];

      $this->view('richestPeoples/index', $data);
   }

   public function delete($Id)
   {
      // echo ($Id);exit;
      $this->richestPeopleModel->deleteRichestPeople($Id);

      $data = [
         'deleteStatus' => "het record met id = $Id is succesvol verwijderd",
      ];
      $this->view('richestPeoples/delete', $data);
      header("Refresh:2; url=" . URLROOT . "/richestPeoples/index");
   }
}
