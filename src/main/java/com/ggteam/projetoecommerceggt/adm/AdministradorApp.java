package com.ggteam.projetoecommerceggt.adm;

import com.ggteam.projetoecommerceggt.dao.ResourcesDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author on github *
 * -> @gabrielf7 (JoaoGabriel)
 * -> @jvpererinha (JoaoVictorD.)
 * -> @gustavo3g (GustavoBarros)
 * -> @ (TallysSilva)
 */
@WebServlet(name = "Administrador", urlPatterns = {"/Administrador"})
public class AdministradorApp extends HttpServlet {

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");
    
    ResourcesDAO srcDao = new ResourcesDAO();
    srcDao.getLoginSession(
      "IdUser",
      "/dono",
      request, response
    );
    srcDao.getIncludeURL(
      "/app_adm_7w7/adm_7w7.jsp", 
      request, response
    );
  }
  
  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>

}
