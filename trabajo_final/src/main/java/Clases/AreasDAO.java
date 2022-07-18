package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AreasDAO {

	Connection conexion=null;
	
	
	public AreasDAO() throws ClassNotFoundException
	{		
		Conexion con=new Conexion();
		conexion=con.getConnection();
	}
		
	
	
	public List<Areas> listarAreas()
	{
		PreparedStatement ps;
        ResultSet rs;
		List<Areas> lista=new ArrayList<>();
		
		try
		{
			ps=conexion.prepareStatement("SELECT * FROM areas");			
			rs=ps.executeQuery();			
			
			while(rs.next())
			{
				int id=rs.getInt("id_area");
				String nombre=rs.getString("nombre");
				int telefono=rs.getInt("telefono");
				String mail=rs.getString("mail");		
				int estado=rs.getInt("estado");				
				Areas area=new Areas(id,nombre,telefono,mail,estado);			
				lista.add(area);									
			}		
			
			return lista;
		}
		catch(SQLException e)
		{
			System.out.println("Error de Conexion");
			return null;
		}		
	}
	public boolean  insertarArea(Areas area)
	{
		PreparedStatement ps;
		
		try
		{
			ps=conexion.prepareStatement("insert into areas (nombre,telefono,mail,estado) values(?,?,?,?)");
			//ps.setString(0, null);
			ps.setString(1, area.getNombre());
			ps.setInt(2, area.getTelefono());
			ps.setString(3, area.getMail());
			ps.setInt(4,area.getEstado());			
			ps.execute();			
			return true;			
		}
		catch(SQLException e)
		{
			System.out.println("Error al insertar dato");
			return false;			
		}
		
	}
	
	
	public boolean actualizarArea(Areas area)
	{
		PreparedStatement ps;		
		try
		{
			ps=conexion.prepareStatement("update areas set nombre=?,telefono=?,mail=?,estado=? where id_area=?");
			ps.setString(1, area.getNombre());
			ps.setInt(2, area.getTelefono());
			ps.setString(3, area.getMail());
			ps.setInt(4,area.getEstado());				
			ps.setInt(7,area.getId_area());
			ps.execute();			
			return true;			
		}
		catch(SQLException e)
		{
			System.out.println("Error al insertar dato");
			return false;			
		}
	}
	
	
	public boolean eliminarArea(int _id)
	{
		PreparedStatement ps;
		try
		{
			ps=conexion.prepareStatement("delete from areas where id_area=?");
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
	

	
	public Areas mostrarArea(int _id)
	{
		PreparedStatement ps;
		ResultSet rs;
		Areas area=null;
		
		try
		{
			ps=conexion.prepareStatement("select * from areas where id_area=?");
			ps.setInt(1, _id);
			rs=ps.executeQuery();
			while(rs.next())
			{
				int id=rs.getInt("id_area");
				String nombre=rs.getString("nombre");
				int telefono=rs.getInt("telefono");
				String mail=rs.getString("mail");		
				int estado=rs.getInt("estado");				
				area=new Areas(id,nombre,telefono,mail,estado);			
			}
			return area;
		}
		catch(SQLException e)
		{
			System.out.println("Error al insertar dato");
			return null;			
		}
		
		
	}
}

