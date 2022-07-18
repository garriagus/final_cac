package Clases;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

public class Conexion 

{
		public String driver="com.mysql.jdbc.Driver";

		public Connection getConnection() throws ClassNotFoundException
		{
			Connection conexion=null;
			try
			{
			Class.forName(driver);
			 conexion=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalcac","root","");
			}
			catch(SQLException e)
			{
			  System.out.println(e.toString());
			}				
			return conexion;
		}
		
		
		
		
		
		public static void main(String [] args) throws SQLException, ClassNotFoundException 
		{
			Connection conexion=null;
			Conexion con=new Conexion();
			conexion=con.getConnection();
			
			
			
			PreparedStatement ps;
			ResultSet rs;
			
			
			ps=conexion.prepareStatement("select * from empleados");
			rs=ps.executeQuery();
			
			
			while(rs.next())
			{
				int id=rs.getInt("id_empleado");
				String nombre=rs.getString("nombre");
				String apellido=rs.getString("apellido");
				Date fecha=rs.getDate("fecha_alta");
				int id_area=rs.getInt("id_area");
				
				System.out.println("Id: "+id+" Nombre:"+nombre+" Apellido:"+apellido+" fecha:"+fecha+"id_area:"+id_area);
			}
			ps=conexion.prepareStatement("select * from areas");
			rs=ps.executeQuery();
			
			
			while(rs.next())
			{
				int id_area=rs.getInt("id_area");
				String nombre_area=rs.getString("nombre");
				String telefono_area=rs.getString("telefono");
				String mail_area=rs.getString("mail");
				Date fecha_area=rs.getDate("fecha_alta");
				int estado_area=rs.getInt("estado");
				
				System.out.println("Id: "+id_area+" Nombre:"+nombre_area+" Apellido:"+telefono_area+" fecha:"+fecha_area);
			}
		
		
		
		
	
	
	
	
	
}
		}
