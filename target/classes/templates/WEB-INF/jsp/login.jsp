<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <!-- Настройка viewport -->
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Авторизация</title>
</head>

<body>
<sec:authorize access="isAuthenticated()">
  <% response.sendRedirect("/"); %>
</sec:authorize>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

<style>


  /* Form Style */
  .form-horizontal{
    background: #fff;
    padding-bottom: 40px;
    border-radius: 15px;
    text-align: center;
  }
  .form-horizontal .heading{
    display: block;
    font-size: 35px;
    font-weight: 700;
    padding: 35px 0;
    border-bottom: 1px solid #f0f0f0;
    margin-bottom: 30px;
  }
  .form-horizontal .form-group{
    padding: 0 40px;
    margin: 0 0 25px 0;
    position: relative;
  }
  .form-horizontal .form-control{
    background: #f0f0f0;
    border: none;
    border-radius: 20px;
    box-shadow: none;
    padding: 0 20px 0 45px;
    height: 40px;
    transition: all 0.3s ease 0s;
  }
  .form-horizontal .form-control:focus{
    background: #e0e0e0;
    box-shadow: none;
    outline: 0 none;
  }
  .form-horizontal .form-group i{
    position: absolute;
    top: 12px;
    left: 60px;
    font-size: 17px;
    color: #c8c8c8;
    transition : all 0.5s ease 0s;
  }
  .form-horizontal .form-control:focus + i{
    color: #00b4ef;
  }
  .form-horizontal .fa-question-circle{
    display: inline-block;
    position: absolute;
    top: 12px;
    right: 60px;
    font-size: 20px;
    color: #808080;
    transition: all 0.5s ease 0s;
  }
  .form-horizontal .fa-question-circle:hover{
    color: #000;
  }
  .form-horizontal .main-checkbox{
    float: left;
    width: 20px;
    height: 20px;
    background: #11a3fc;
    border-radius: 50%;
    position: relative;
    margin: 5px 0 0 5px;
    border: 1px solid #11a3fc;
  }
  .form-horizontal .main-checkbox label{
    width: 20px;
    height: 20px;
    position: absolute;
    top: 0;
    left: 0;
    cursor: pointer;
  }
  .form-horizontal .main-checkbox label:after{
    content: "";
    width: 10px;
    height: 5px;
    position: absolute;
    top: 5px;
    left: 4px;
    border: 3px solid #fff;
    border-top: none;
    border-right: none;
    background: transparent;
    opacity: 0;
    -webkit-transform: rotate(-45deg);
    transform: rotate(-45deg);
  }
  .form-horizontal .main-checkbox input[type=checkbox]{
    visibility: hidden;
  }
  .form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
    opacity: 1;
  }
  .form-horizontal .text{
    float: left;
    margin-left: 7px;
    line-height: 20px;
    padding-top: 5px;
    text-transform: capitalize;
  }
  .form-horizontal .btn{
    width: 100%;
    background: #00b4ef;
    padding: 10px 20px;
    border: none;
    font-size: 14px;
    font-weight: bold;
    color: #fff;
    border-radius: 20px;
    text-transform: uppercase;
    margin: 20px 0 30px 0;
  }
  @media only screen and (max-width: 479px){
    .form-horizontal .form-group{
      padding: 0 25px;
    }
    .form-horizontal .form-group i{
      left: 45px;
    }
    .form-horizontal .btn{
      padding: 10px 20px;
    }
  }
</style>

<div class="container">
  <div class="row">

    <div class="col-md-offset-3 col-md-6">
      <form class="form-horizontal" method="POST">
        <span class="heading">АВТОРИЗАЦИЯ</span>
        <div class="form-group">
          <input type="text" class="form-control" name="username" id="inputUsername" placeholder="Username">
          <i class="fa fa-user"></i>
        </div>
        <div class="form-group help">
          <input type="password" class="form-control" name="password" id="inputPassword" placeholder="Password">
          <i class="fa fa-lock"></i>
        </div>
        <span>Looking to
        <a href="/registration">create an account</a>?</span>
        <div class="form-group">

          <button type="submit" class="btn btn-default">ВХОД</button>
        </div>
      </form>
    </div>

  </div><!-- /.row -->
</div><!-- /.container -->

<!-- Подключаем jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Подключаем плагин Popper -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

<!-- Подключаем Bootstrap JS -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous" ></script>

</body>
</html>
