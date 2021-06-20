<%@include file="../minitemplates/abrir_page.jsp"%>
    <title> Editar Perfil | More Shop </title>

    <!-- My Styles -->
    <link href="${css}/global.css" rel="stylesheet">
    <link href="${css}/client.css" rel="stylesheet">
    
  <%@include file="../minitemplates/fechar_head.jsp"%>
  <!-- Abre Body -->
    <%@include file="../minitemplates/mostrar_header.jsp"%>
    
    <main>      
      <div class="container">
        <div class="row">
          <div class="col-3 h-50 d-flex flex-column justify-content-center">
            <a type="button" href="${ctx}/ClientEdit" class="btn btn-outline-secondary">Editar perfil</a>
            <a type="button" class="btn btn-outline-secondary">Hist�rico</a>
            <a type="button" href="${ctx}/Logout" class="btn btn-outline-secondary">Sair</a>
          </div>
          <div class="col-9">
            <h3 class="text-center mt-5">N�s diga ${UserName} algumas informa��es</h3>
            <form name="FormUsuario"
              action="${ctx}/ClientEdit" method="POST"
              class="needs-validation"
            >
              <div class="row">
                <div class="input-group">
                  <span class="input-group-text">Nome completo</span>
                  <input type="text" aria-label="Primeiro nome" class="form-control"
                         name="nome_user" placeholder="Primeiro nome"
                         required
                         />
                  <input type="text" aria-label="Sobrenome" class="form-control"
                         name="sobrenome_user" placeholder="Sobrenome"
                         required
                         />
                  <div class="invalid-feedback">
                    Por favor, informe o nome completo.
                  </div>
                </div>

                <div class="col-12">
                  <label for="nickname" class="form-label">Nickname</label>
                  <div class="input-group has-validation">
                    <span class="input-group-text">@</span>
                    <input type="text" class="form-control" id="nickname" 
                           name="nickname_user" 
                           placeholder="Nome fict�cio para o usu�rio"
                           required
                           />
                    <div class="invalid-feedback">
                      Por favor, informe o nome fict�cio do usu�rio.
                    </div>
                  </div>
                </div>

                <div class="col-12">
                  <label for="email" class="form-label">Email</label>
                  <input type="email" class="form-control" id="email" 
                         name="email_user" placeholder="nome@exemplo.com" 
                         required
                         />
                  <div class="invalid-feedback">
                    Por favor, informe um email v�lido.
                  </div>
                </div>

                <div class="col-12">
                  <label for="senha" class="form-label">Senha</label>
                  <input type="password" class="form-control" id="senha" 
                         name="senha_user" placeholder="Sua senha"
                         required 
                         />
                  <div class="invalid-feedback">
                    Por favor, informe sua senha.
                  </div>
                </div>

                <div class="col-12">
                  <label for="cpf" class="form-label">CPF</label>
                  <input type="text" class="form-control" id="cpf" 
                         name="cpf_user" placeholder="Seu cpf"
                         required 
                         />
                  <div class="invalid-feedback">
                    Por favor, informe seu cpf.
                  </div>
                </div>

                <div class="col-12 pt-3 input-group">
                  <span class="input-group-text">Localidade</span>
                  <input type="text" aria-label="Cidade" class="form-control"
                         name="cidade_user" placeholder="Sua cidade"
                         />
                  <input type="text" aria-label="Estado" class="form-control"
                         name="estado_user" placeholder="Seu estado"
                         />
                </div>
              </div>

              <hr class="my-4">
              <button class="w-100 p-2 btn btn-success btn-lg" 
                      type="submit">Confirmar o cadastro
              </button>
            </form>
          </div>
        </div>
      </div>
    </main>
    
    <div class="pt-5 text-muted text-center text-small">
      <%@include file="../minitemplates/footer.jsp"%>
    </div>
    <!-- My Script -->
    <script src="${js}/client_edit.js"></script>
  <!-- Fecha Body -->
<%@include file="../minitemplates/fechar_page.jsp"%>