package com.ggteam.projetoecommerceggt.servlets;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ggteam.projetoecommerceggt.models.Produto;

/**
 *
 * @author on github *
 * -> @gabrielf7 (JoaoGabriel)
 * -> @jvpererinha (JoaoVictorD.)
 * -> @gustavo3g (GustavoBarros)
 * -> @ (TallysSilva)
 */
@WebServlet(name = "ListaProduto", urlPatterns = {"/ListaProduto"})
public class ListaProduto extends HttpServlet {

  protected void list_product(HttpServletRequest request, HttpServletResponse response) {
    try {
      Produto produto = new Produto();
      List<Produto> produtos = produto.listAll();
      request.setAttribute("produtos", produtos);
      request.getRequestDispatcher("menu/list_product.jsp").forward(request, response);
    } catch (IOException | SQLException | ServletException e) {
    }
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    response.setContentType("text/html;charset=UTF-8");

    request.getRequestDispatcher("/menu/list_product.jsp").include(request, response);
  }

  @Override
  public String getServletInfo() {
    return "Short description";
  }// </editor-fold>

}