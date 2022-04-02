<?php

class Users extends Controller
{
    public function register()
    {
        $registerModel = $this->getModel();
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            // Process form
            $registerModel->setName(trim($_POST['name']));
            $registerModel->setEmail(trim($_POST['email']));
            $registerModel->setPassword(trim($_POST['password']));
            $registerModel->setConfirmPassword(trim($_POST['confirm_password']));

            //validation
            if (empty($registerModel->getName())) {
                $registerModel->setNameErr('Please enter a name');
            }
            if (empty($registerModel->getEmail())) {
                $registerModel->setEmailErr('Please enter an email');
            } elseif ($registerModel->emailExist($_POST['email'])) {
                $registerModel->setEmailErr('Email is already registered');
            }
            if (empty($registerModel->getPassword())) {
                $registerModel->setPasswordErr('Please enter a password');
            } elseif (strlen($registerModel->getPassword()) < 4) {
                $registerModel->setPasswordErr('Password must contain at least 4 characters');
            }

            if ($registerModel->getPassword() != $registerModel->getConfirmPassword()) {
                $registerModel->setConfirmPasswordErr('Passwords do not match');
            }

            if (
                empty($registerModel->getNameErr()) &&
                empty($registerModel->getEmailErr()) &&
                empty($registerModel->getPasswordErr()) &&
                empty($registerModel->getConfirmPasswordErr())
            ) {
                //Hash Password
                $registerModel->setPassword(password_hash($registerModel->getPassword(), PASSWORD_DEFAULT));

                if ($registerModel->signup()) {
                    //header('location: ' . URLROOT . 'users/login');
                    flash('register_success', 'You have registered successfully');
                    redirect('users/login');
                } else {
                    die('Error in sign up');
                }
            }
        }
        // Load form
        //echo 'Load form, Request method: ' . $_SERVER['REQUEST_METHOD'];
        $viewPath = VIEWS_PATH . 'users/Register.php';
        require_once $viewPath;
        $view = new Register($this->getModel(), $this);
        $view->output();
    }
    public function login()
    {
        $userModel = $this->getModel();
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            //process form
            $userModel->setEmail(trim($_POST['email']));
            $userModel->setPassword(trim($_POST['password']));

            //validate login form
            if (empty($userModel->getEmail())) {
                $userModel->setEmailErr('Please enter an email');
            } elseif (!($userModel->emailExist($_POST['email']))) {
                $userModel->setEmailErr('No user found');
            }

            if (empty($userModel->getPassword())) {
                $userModel->setPasswordErr('Please enter a password');
            } elseif (strlen($userModel->getPassword()) < 4) {
                $userModel->setPasswordErr('Password must contain at least 4 characters');
            }

            // If no errors
            if (
                empty($userModel->getEmailErr()) &&
                empty($userModel->getPasswordErr())
            ) {
                //Check login is correct
                $loggedUser = $userModel->login();
                if ($loggedUser) {
                    //create related session variables
                    $this->createUserSession($loggedUser);
                    die('Success log in User');
                } else {
                    $userModel->setPasswordErr('Password is not correct');
                }
            }
        }
        // Load form
        //echo 'Load form, Request method: ' . $_SERVER['REQUEST_METHOD'];
        $viewPath = VIEWS_PATH . 'users/Login.php';
        require_once $viewPath;
        $view = new Login($userModel, $this);
        $view->output();
    }

    public function createUserSession($user)
    {
        $_SESSION['user_id'] = $user->id;
        $_SESSION['user_name'] = $user->name;
        //header('location: ' . URLROOT . 'pages');
        redirect('pages');
    }

    public function logout()
    {
        echo 'logout called';
        unset($_SESSION['user_id']);
        unset($_SESSION['user_name']);
        session_destroy();
        redirect('users/login');
    }

    public function isLoggedIn()
    {
        return isset($_SESSION['user_id']);
    }
}



public class registeration extends Controller
{
  protected $username;
  protected $password;
  protected $email;
  protected $phonenumber;
  protected $image; //haseeebo  delwa2ty
  protected $usertype; //admin or normal user


  public function __construct()
  {
    $username = NULL;
    $password = NULL;
    $email = NULL;
    $phonenumber = NULL;
    $image = NULL;
    $usertype = NULL;

  }

  public function useradd($username, $password, $email, $phonenumber, $image, $usertype)
  {
    $this -> username = $username;
    $this -> password = $password;
    $this -> email = $email;
    $this -> phonenumber = $phonenumber;
    $this -> image = $image;
    $this -> usertype = $usertype;

    $conn=mysqli_connect("localhost","root","","eama");
    if (mysqli_connect_errno($conn))
    {
      echo "Failed to connect to MySQL: " . mysqli_connect_error();
    }
    $sql = "INSERT INTO `users` (ID, username, password, email, phone_number, image, user_type) VALUES ('".$_POST['ID']."', '".$_POST['username']."', '".$_POST['password']."', '".$_POST['email']."', '".$_POST['phone_number']."', '".$_POST['image']."', '".$_POST['user_type']."' )";
    if (!mysqli_query($con,$sql))
    {
      die('Error: ' . mysqli_error($con));
    }
    echo "1 record added";
    mysqli_close($con);

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
?>
