<header>

  <nav class="py-2 my-bg border-bottom">

    <div class="container d-flex flex-wrap">
      <ul class="nav my-nav me-auto">
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
          <a class="nav-link" 
            href="${pageContext.request.contextPath}/ListaCategoria"
          >
            Categoria
          </a>
        </li>
        <li class="nav-item me-2">
          <a class="nav-link" 
            href="${pageContext.request.contextPath}/ListaProduto"
          >
            Produtos
          </a>
        </li>
        <li class="nav-item me-5">
          <a class="nav-link" 
            href="${pageContext.request.contextPath}/Lojas"
          >
            Lojas
          </a>
        </li>
      </ul>
      <ul class="nav my-nav">
        <li class="nav-item">
          <a href="${pageContext.request.contextPath}/Login"
            class="nav-link px-2" type="button" 
          >
            Fa�a Login
          </a>
        </li>
        <li class="nav-item">
          <a href="${pageContext.request.contextPath}/Cliente"
            class="nav-link px-2" type="button" 
          >
            Cadastra-se
          </a>
        </li>
      </ul>
    </div>

  </nav>
  <nav class="py-3 mb-1">

    <div class="container d-flex flex-wrap justify-content-center">
      <a href="${pageContext.request.contextPath}/" 
        class="d-flex align-items-center mb-md-0 me-md-auto"
      >
        <img class="logoSvg"
          src="${pageContext.request.contextPath}/assets/logoIcon01.svg" 
          alt="logo"
        />
        <img class="logo" 
          src="${pageContext.request.contextPath}/assets/logo.png" 
          alt="Logo"
        />
      </a>
      <form class="d-flex align-items-center col-12 col-lg-3 mb-lg-0">
        <input type="search" class="form-control me-2" placeholder="Search...">
        <button class="btn btn-primary my-button-search p-2" type="submit">Pesquisa</button>
      </form>

    </div>

  </nav>

</header>