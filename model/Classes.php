<?php
class dbconfig extends model
{
  protected $servername;
  protected $username;

  protected $password;
  protected $dbname;


  public function dbConfig()
  {
    $this -> servername = 'localhost';
    $this -> username = 'root';
    $this -> password = '';
    $this -> dbName = 'eama';
  }

}

class mysqli extends dbconfig
{
  protected $connectionstring;
  protected $dataset;
  protected $sqlquery;
  protected $dbname; //inherited
  protected $hostname;
  protected $username;
  protected $password; //user or db??


  public function mysqli()
  {
    $this -> connectionString = NULL;
    $this -> dataset = NULL;
    $this -> sqlquery = NULL;

    $dbPara = new Dbconfig();
    $this -> databaseName = $dbPara -> dbName;
    $this -> hostName = $dbPara -> serverName;
    $this -> userName = $dbPara -> userName;
    $this -> passCode = $dbPara ->passCode;
    $dbPara = NULL;  }


    public function dbconnect()
    {
      $this -> connectionString = mysqli_connect($this -> serverName,$this -> userName,$this -> passCode);
      mysqli_select_db($this -> databaseName,$this -> connectionString);
      return $this -> connectionString;
    }

    public function dbdisconnect()
    {
      $this -> connectionString = NULL;
       $this -> sqlQuery = NULL;
       $this -> dataSet = NULL;
       $this -> databaseName = NULL;
       $this -> hostName = NULL;
       $this -> userName = NULL;
       $this -> passCode = NULL;
    }

    public function selectall()
    {
       $this -> sqlQuery = 'SELECT * FROM '.$this -> databaseName.'.'.$tableName;
       $this -> dataSet = mysqli_query($this -> sqliQuery,$this -> connectionString);
       return $this -> dataSet;
    }


    public function selectwhere()
    {
      $this -> sqlQuery = 'SELECT * FROM '.$tableName.' WHERE '.$rowName.' '.$operator.' ';
      if($valueType == 'int') {
        $this -> sqlQuery .= $value;
      }
      else if($valueType == 'char')   {
        $this -> sqlQuery .= "'".$value."'";
      }
      $this -> dataSet = mysqli_query($this -> sqliQuery,$this -> connectionString);
      $this -> sqlQuery = NULL;
      return $this -> dataSet;
    }


    public function insertinto()
    {
      $i = NULL;

      $this -> sqlQuery = 'INSERT INTO '.$tableName.' VALUES (';
      $i = 0;
      while($values[$i]["val"] != NULL && $values[$i]["type"] != NULL) {
        if($values[$i]["type"] == "char") {
          $this -> sqlQuery .= "'";
          $this -> sqlQuery .= $values[$i]["val"];
          $this -> sqlQuery .= "'";
        }
        else if($values[$i]["type"] == 'int') {
          $this -> sqlQuery .= $values[$i]["val"];
        }
        $i++;
        if($values[$i]["val"] != NULL)  {
          $this -> sqlQuery .= ',';
        }
      }
      $this -> sqlQuery .= ')';
      mysqli_query($this -> sqliQuery,$this ->connectionString);
      return $this -> sqlQuery;
    }

  }


  public class product extends registeration
  {
    protected $productid;
    protected $companyno;
    protected $image;
    protected $description;
    protected $username;

    public function addproduct()
    {

    }

    public function deleteproduct()
    {

    }

    public function modifyproduct()
    {

    }


  }

  }
