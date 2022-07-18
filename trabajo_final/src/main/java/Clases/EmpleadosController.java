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


//@WebServlet("/EmpleadosController")
public class EmpleadosController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public EmpleadosController() 
    {
        super();
        
    }

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{			
		String accion=null;
		
		EmpleadosDAO empleadoDAO=null;
		try 
		{
			empleadoDAO = new EmpleadosDAO();
			
		} 
		catch (ClassNotFoundException e) 
		{
			
			e.printStackTrace();
		} 
		
		
		
		RequestDispatcher dispatcher=null;
		accion=request.getParameter("accion");
		
		if(accion==null||accion.isEmpty())
		{
			dispatcher=request.getRequestDispatcher("Vistas/empleados.jsp");
		}
		else if(accion.equals("modificar"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/modificar.jsp");
		}
		else if(accion.equals("actualizar"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			int dni=Integer.parseInt(request.getParameter("dni"));
			String mail=request.getParameter("mail");	
			int id_area=Integer.parseInt(request.getParameter("id_area"));
			
			Empleados empleado=new Empleados(id,nombre,apellido,dni,mail,id_area,1);
			empleadoDAO.actualizarEmpleado(empleado);		
			
			dispatcher=request.getRequestDispatcher("Vistas/empleados.jsp");			
		}
		else if(accion.equals("eliminar"))
		{
			int id=Integer.parseInt(request.getParameter("id"));
			empleadoDAO.eliminarEmpleado(id);
			dispatcher=request.getRequestDispatcher("Vistas/empleados.jsp");	
		}
		else if(accion.equals("nuevo"))
		{
			dispatcher=request.getRequestDispatcher("Vistas/nuevo.jsp");	
		}
		else if(accion.equals("insert"))
		{

			String nombre=request.getParameter("nombre");
			String apellido=request.getParameter("apellido");
			int dni=Integer.parseInt(request.getParameter("dni"));
			String mail=request.getParameter("mail");	
			int id_area=Integer.parseInt(request.getParameter("id_area"));
			
			Empleados empleado=new Empleados(0,nombre,apellido,dni,mail,id_area,1);				
		
			empleadoDAO.insertarEmpleado(empleado);			
			dispatcher=request.getRequestDispatcher("Vistas/empleados.jsp");
		}
		 
		
		
		
		
		
		
		
		
		
		
		
		dispatcher.forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		doGet(request, response);
	}

}
