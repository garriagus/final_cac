package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


public class EmpleadosDAO 
{
	Connection conexion=null;
	
	
	public EmpleadosDAO() throws ClassNotFoundException
	{		
		Conexion con=new Conexion();
		conexion=con.getConnection();
	}
		
	
	
	public List<Empleados> listarEmpleados()
	{
		PreparedStatement ps;
        ResultSet rs;
		List<Empleados> lista=new ArrayList<>();
		
		try
		{
			ps=conexion.prepareStatement("SELECT * FROM empleados");			
			rs=ps.executeQuery();			
			

			while(rs.next())
			{
				int id=rs.getInt("id_empleado");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				int dni=rs.getInt("dni");
				String mail=rs.getString("mail");
				int id_area=rs.getInt("id_area");
				int estado=rs.getInt("estado");				
				Empleados empleado=new Empleados(id,nombre,apellido,dni,mail,id_area,estado);			
				lista.add(empleado);									
			}		
			
			return lista;
		}
		catch(SQLException e)
		{
			System.out.println("Error de Conexion");
			return null;
		}		
	}
	
	
	public boolean  insertarEmpleado(Empleados empleado)
	{
		PreparedStatement ps;
		
		try
		{
			ps=conexion.prepareStatement("insert into empleados (nombre,apellido,dni,mail,id_area,estado) values(?,?,?,?,?,?)");
			//ps.setString(0, null);
			ps.setString(1, empleado.getNombre());
			ps.setString(2, empleado.getApellido());
			ps.setInt(3, empleado.getDni());
			ps.setString(4,empleado.getMail());	
			ps.setInt(5, empleado.getId_area());
			ps.setInt(6,empleado.getEstado());			
			ps.execute();			
			return true;			
		}
		catch(SQLException e)
		{
			System.out.println("Error al insertar dato");
			return false;			
		}
		
	}
	
	
	public boolean actualizarEmpleado(Empleados empleado)
	{
		PreparedStatement ps;		
		try
		{
			ps=conexion.prepareStatement("update empleados set nombre=? ,apellido=?,dni=?,mail=?,id_area=?,estado=? where id_empleado=?");
			ps.setString(1, empleado.getNombre());
			ps.setString(2, empleado.getApellido());
			ps.setInt(3, empleado.getDni());
			ps.setString(4,empleado.getMail());	
			ps.setInt(5, empleado.getId_area());
			ps.setInt(6,empleado.getEstado());			
			ps.setInt(7,empleado.getId_empleado());
			ps.execute();			
			return true;			
		}
		catch(SQLException e)
		{
			System.out.println("Error al insertar dato");
			return false;			
		}
	}
	
	
	public boolean eliminarEmpleado(int _id)
	{
		PreparedStatement ps;
		try
		{
			ps=conexion.prepareStatement("delete from empleados where id_empleado=?");
			ps.setInt(1, _id);
			ps.execute();
			return true;
		}
		catch(SQLException e)
		{
			System.out.println("Error al insertar dato");
			return false;			
		}
		
	}
	

	
	public Empleados mostrarEmpleado(int _id)
	{
		PreparedStatement ps;
		ResultSet rs;
		Empleados empleado=null;
		
		try
		{
			ps=conexion.prepareStatement("select * from empleados where id_empleado=?");
			ps.setInt(1, _id);
			rs=ps.executeQuery();
			while(rs.next())
			{
				int id=rs.getInt("id_empleado");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				int dni=rs.getInt("dni");
				String mail=rs.getString("mail");
				int id_area=rs.getInt("id_area");
				int estado=rs.getInt("estado");						
				empleado =new Empleados(id,nombre,apellido,dni,mail,id_area,estado);				
			}
			return empleado;
		}
		catch(SQLException e)
		{
			System.out.println("Error al insertar dato");
			return null;			
		}
		
		
	}
}
	
	
	
	
	
	