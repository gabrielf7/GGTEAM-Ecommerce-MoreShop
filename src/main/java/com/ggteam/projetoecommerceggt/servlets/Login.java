package com.ggteam.projetoecommerceggt.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Model 
import com.ggteam.projetoecommerceggt.models.UsuarioCliente;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
/**
 *
 * @author on github *
 * -> @gabrielf7 (JoaoGabriel)
 * -> @jvpererinha (JoaoVictorD.)
 * -> @gustavo3g (GustavoBarros)
 * -> @ (TallysSilva)
 */
@WebServlet(name = "Login", urlPatterns = {"/Login"})
public class Login extends HttpServlet {
  
  public EntityManager getEntityManager() {
    //Obtém o factory a partir da unidade de persistência.
    EntityManagerFactory factory = Persistence.createEntityManagerFactory(
      "ProjetoEcommerceGGT"
    );
    //Cria um entity manager.
    EntityManager entityManager = factory.createEntityManager();

    return entityManager;
  }
  
  public UsuarioCliente getUsuario(String email, String senha){
    try {
      EntityManager entityManager = getEntityManager();

      UsuarioCliente usuario = (UsuarioCliente) entityManager
        .createQuery(
          "SELECT u FROM UsuarioCliente u WHERE "
          + "u.email = :email_sql and u.senha = :senha_sql"
        )
        .setParameter("email_sql", email)
        .setParameter("senha_sql", senha).getSingleResult();

      return usuario;
    } catch (Exception e) {
      //System.out.println("result: " + e.getMessage());
      //System.out.println("senha: " + senha);
      return null;
    }
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    String email = request.getParameter("email_login");
    String senha = request.getParameter("senha_login");
    
    UsuarioCliente validoUser = getUsuario(email, senha);
    if (validoUser == null) {
      System.out.println("Error ao fazer login" + validoUser);
    } else {
      System.out.println("Logado o CLiente");
      response.sendRedirect(request.getContextPath() + "/home.jsp");
    }
  }
  
  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>

}
