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
      //*****
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
      //*****
    }


    public function selectwhere()
    {
      //*****
    }


    public function insertinto()
    {
      //*****
    }

  }


  public class registeration extends model
  {
    protected $username;
    protected $password;
    protected $email;
    protected $phonenumber;
    protected $image;
    protected $usertype;


    public function __construct()
    {

    }

    public function useradd()
    {

    }


  }


  public class login extends model
  {
    protected $email;
    protected $password;

    public function __construct()
    {

    }


    public function userlogin()
    {

    }


  }



  public class logout extends model
  {
    protected $email;
    protected $password;

    public function __construct()
    {

    }


    public function userlogout()
    {

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


  public class usermodify extends registeration
  {
    public function modifyuser()
    {

    }
  }


  public class deleteuser extends registeration
  {
    public function deleteuser()
    {

    }
  }
