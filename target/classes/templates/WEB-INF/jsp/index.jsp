<!DOCTYPE HTML>
<html>
<head>
  <title>Главная</title>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<body>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

<style>
  body {
    margin: 0;
    font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #212529;
    text-align: left;
    background-color: #fff;
  }

  html {
    position: relative;
    min-height: 100%;
  }

  .container {
    max-width: 1600px;
  }

  .form-inline my-2 my-lg-0 {
    vertical-align: center;
  }

  .navbar-brand {
    display: inline-block;
    padding-top: .3125rem;
    padding-bottom: .3125rem;
    margin-right: 1rem;
    font-size: 2rem;
    line-height: inherit;
    white-space: nowrap;
  }

  .btn {
    font-size: 2rem;
  }

  li {
    display: list-item;
    text-align: -webkit-match-parent;
    font-size: 2rem;
  }

  .img-circle {
    display: inline-block;
    vertical-align: middle;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    padding-left: 0.5rem;
  }

  @media (min-width: 768px) {
    .navbar-expand-md .navbar-nav {
      -ms-flex-direction: row;
      flex-direction: row;
    }

    .jumbotron {
      padding: 8rem 2rem;
    }

    .mt-sm-0, .my-sm-0 {
      margin-top: 0!important;
      margin-bottom: 0!important;
      padding-left: 1rem;
    }

  }

</style>

<header class="header">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark" role="navigation">
    <a class="navbar-brand" href="#" role="banner">Eventx</a>

    <div class="collapse navbar-collapse" id="navbarsDefault">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Главная <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">О сайте</a>
        </li>
      </ul>

      <sec:authorize access="!isAuthenticated()">
      <form class="form-inline my-2 my-lg-0">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" formaction="login">Войти</button>
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit" formaction="registration">Зарегистрироваться</button>
      </form>
      </sec:authorize>
      <sec:authorize access="isAuthenticated()">
        <a href="/logout"><button class="btn btn-outline-success my-2 my-sm-0" type="submit">Выйти</button></a>
      </sec:authorize>
    </div>
  </nav>
</header>

<main role="main">
  <div class="jumbotron">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <sec:authorize access="isAuthenticated()">
            <h2> Hello ${pageContext.request.userPrincipal.name}</h2>
          </sec:authorize>
          <h4><a href="/news">Новости (только пользователь)</a></h4>
          <h4><a href="/admin">Пользователи (только админ)</a></h4>
        </div>
      </div>
    </div>
  </div>

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