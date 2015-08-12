 /*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
import models.ClInventario;
import models.HibernateUtil;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author fredyalexander
 */
@WebServlet(name = "SInventario", urlPatterns = {"/SInventario"})
public class SInventario extends HttpServlet {
    
    private void mtdInventario(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            PrintWriter out = response.getWriter();
            ClInventario objInventario = new ClInventario(request.getParameter("codigo"),Integer.parseInt(request.getParameter("cantidad")), request.getParameter("nombre"),Integer.parseInt(request.getParameter("valor")));
            
            Session sesion = HibernateUtil.getSessionFactory().openSession();
            Transaction tx = sesion.beginTransaction();
            sesion.save(objInventario);
            
            HttpSession sh = request.getSession();
            sh.setAttribute("Inventario", objInventario);
            tx.commit();
            sesion.close();
            //response.sendRedirect("RegistroInventario.html");
            response.sendRedirect("SInventario?i=mtdListar");
            //JOptionPane.showMessageDialog(null, "Registrado");
    }
    
     private void mtdListar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        Session sesion = HibernateUtil.getSessionFactory().openSession();
        Query sql=sesion.createQuery("select c from ClInventario c ");
        ArrayList<ClInventario> inventario =  (ArrayList) sql.list();
        request.setAttribute("Inventario", inventario);
        sesion.close();
//out.println(inventario.size());        
        request.getRequestDispatcher("RegistroInventario.jsp").forward(request,response);
    }
    
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        if (request.getParameter("i").equalsIgnoreCase("mtdInventario")) {
            mtdInventario(request,response);  
        }
        else if(request.getParameter("i").equalsIgnoreCase("mtdListar")){
            mtdListar(request,response);
        }
    }
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
