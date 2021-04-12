<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="App Studant uma plataforma de form">
    <meta name="author" content="JoaoGabriel, GG TIME, and App Studant CEO">
    <title> Entrar | More Shop </title>

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Optional JavaScript; choose one of the two! -->
    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>

    <!-- My Styles -->
    <link href="${pageContext.request.contextPath}/css/global.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/login.css" rel="stylesheet">

  </head>
  <body>
    <header>

      <nav class="navbar navbar-expand-lg text-white bg-primary">
        <div class="container-fluid nav-container-fluid">
          <div class="my-navbar-brand">
            <a class="navbar-brand" 
              href="${pageContext.request.contextPath}/"
            >
              <img class="logo" 
                src="${pageContext.request.contextPath}/assets/logo.png" 
                alt="Logo"
              />
            </a>
          </div>

          <button class="navbar-toggler" type="button" 
            data-bs-toggle="collapse" 
            data-bs-target="#navbarMain" 
            aria-controls="navbarMain" 
            aria-expanded="false" aria-label="Toggle navigation"
          >
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse mb-2" 
            id="navbarMain"
          >
            <ul class="navbar-nav me-auto">
              <li class="nav-item me-2">
                <a class="nav-link active" aria-current="page"
                  href="${pageContext.request.contextPath}/"
                >
                  Home
                </a>
              </li>
              <li class="nav-item me-2">
                <a class="nav-link" href="#">Sobre</a>
              </li>
              <li class="nav-item me-2">
                <a class="nav-link" href="#">Categoria</a>
              </li>
              <li class="nav-item me-2">
                <a class="nav-link" href="#">Produtos</a>
              </li>
              <li class="nav-item me-2">
                <a class="nav-link" href="#">Lojas</a>
              </li>
            </ul>
            <div class="d-flex">
              <form class="d-flex justify-content-evenly">
                <input class="form-control me-2" type="search" placeholder="Search" 
                  aria-label="Search" 
                />
                <button class="btn btn-success me-2 p-2" type="submit">Pesquisa</button>
              </form>

              <a class="ml-5" type="button" 
                href="${pageContext.request.contextPath}/Login"
              >
                <img
                  src="${pageContext.request.contextPath}/assets/conta-user.png" 
                  alt="User"
                  style="height: 32px; width: 32px;"
                />
              </a>
            </div>
          </div>
        </div>
      </nav>

    </header>
    <main class="text-center">

      <div class="form-signin">
        <form id="formulario" method="POST" name="formulario"
          action="${pageContext.request.contextPath}/Login"
        >
          <h1 class="h3 mb-3 fw-normal">Por favor, faça login</h1>

          <p id="messageErroLogin"></p>

          <div class="form-floating">
            <input type="email" class="form-control" id="floatingInput" 
              name="email_login" placeholder="nome@exemplo.com"
              alt="Informar o email do estudante"
              required
            />
            <label for="floatingInput">Email</label>
          </div>
          <div class="form-floating">
            <input type="password" class="form-control" id="floatingPassword" 
              name="senha_login" placeholder="Recomendamos senha grande"
              alt="Informar a senha do estudante"
              required
            />
            <label for="floatingPassword">Senha</label>
          </div>

          <button class="w-100 btn btn-lg btn-primary" type="submit">
            Fazer Logon
          </button>
          <a href="${pageContext.request.contextPath}/Cliente">
            Está de fora? cadastra-se aqui...
          </a>
          <footer class="pt-5 text-muted text-center text-small">

            <p class="mb-1">&copy; 2021-2025 Good Game Team Inc.</p>
            <ul class="list-inline">
              <li class="list-inline-item"><a href="#">Privacy</a></li>
              <li class="list-inline-item"><a href="#">Terms</a></li>
              <li class="list-inline-item"><a href="#">Support</a></li>
            </ul>

          </footer>
        </form>
      </div>

    </main>
    <!-- My Script -->
    <script src="${pageContext.request.contextPath}/js/login.js"></script>
  </body>
</html>
