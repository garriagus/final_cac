package Clases;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//@WebServlet("/AreasController")
public class AreasController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AreasController() 
    {
        super();
        
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{			
		String accion=null;
		
		AreasDAO areaDAO=null;
		try 
		{
			areaDAO = new AreasDAO();
			
		} 
		catch (ClassNotFoundException e) 
		{
			
			e.printStackTrace();
		} 
		
		
		
		RequestDispatcher dispatcher=null;
		accion=request.getParameter("accion");
		
		if(accion==null||accion.isEmpty())
		{
			dispatcher=request.getRequestDispatcher("Vistas/areas.jsp");
		}
		else if(accion.equals("modificar_areas"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/modificar_areas.jsp");
		}
		else if(accion.equals("actualizar"))
		{

			int id=Integer.parseInt(request.getParameter("id"));
			String nombre=request.getParameter("nombre");
			int telefono=Integer.parseInt(request.getParameter("telefono"));
			String mail=request.getParameter("mail");	
			
			Areas area=new Areas(id,nombre,telefono,mail,1);
			areaDAO.actualizarArea(area);		
			
			dispatcher=request.getRequestDispatcher("Vistas/areas.jsp");			
		}
		else if(accion.equals("eliminar"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			areaDAO.eliminarArea(id);
			dispatcher=request.getRequestDispatcher("Vistas/areas.jsp");	
		}
		else if(accion.equals("nuevo"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/nuevo_areas.jsp");	
		}
		else if(accion.equals("insert"))
		{
			
			String nombre=request.getParameter("nombre");
			int telefono=Integer.parseInt(request.getParameter("telefono"));
			String mail=request.getParameter("mail");	
			
			Areas area=new Areas(0,nombre,telefono,mail,1);			
			
			areaDAO.insertarArea(area);			
			dispatcher=request.getRequestDispatcher("Vistas/areas.jsp");
		}
		
				
				
		
		
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
