package datos;
import java.sql.*;
import javax.swing.JOptionPane;
import org.apache.catalina.connector.Response;
public class Mantenimiento {
	public Connection conn;
	public Statement sent;
	public ResultSet res;
	public PreparedStatement sent2;
	public PreparedStatement sentEliminar;
	public PreparedStatement sentbuscar;
	public String driver = "com.mysql.cj.jdbc.Driver";
	public String url = "jdbc:mysql://localhost/empresa";
	public String user="root";
	public String pass="";
	
	public Connection obtener_conexion() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,pass);
		}catch(SQLException e1) {
			JOptionPane.showMessageDialog(null, "Error en la conexion");
		}catch(ClassNotFoundException e2){
			JOptionPane.showMessageDialog(null, "Error en el driver");
		}
		return conn;
	}
    public ResultSet lista_empleado(String sql) {
        try {
            sent=obtener_conexion().createStatement();
            res=sent.executeQuery(sql);
        }catch(SQLException e3) {
            JOptionPane.showMessageDialog(null, 
                    "error en la consulta");
        }
        return res;
    }
    public boolean insertar_empleado(String apellido, String nombre, 
    		String sexo, String ocupacion, String afp) {
    	try {
            String sql="INSERT INTO Empleado(Apellido,Nombre,Sexo,Ocupacion,AFP)\r\n"
            		+ "VALUES (?,?,?,?,?);";
            sent2=obtener_conexion().prepareStatement(sql);
            sent2.setString(1, apellido);
            sent2.setString(2, nombre);
            sent2.setString(3, sexo);
            sent2.setString(4, ocupacion);
            sent2.setString(5, afp);
            sent2.executeUpdate();
        }catch(SQLException e) {
            JOptionPane.showMessageDialog(null, 
                    "error en el registro");
        }
        return true;
    }
    public ResultSet busqueda_empleado(String ocupacion) {
		try {
			String sql = "SELECT * FROM empleado WHERE ocupacion=?";
			sentbuscar = obtener_conexion().prepareStatement(sql);
			sentbuscar.setString(1, ocupacion);
			res = sentbuscar.executeQuery();
		}catch(Exception e3) {
			JOptionPane.showMessageDialog(null, 
					"ERROR EN LA BUSQUEDA"+e3);
		}
		return res;
	}
    public ResultSet eliminar_empleado(int cod) {
    	try {
			String sql = "DELETE FROM empleado WHERE Codigo="+cod;
			sentEliminar = obtener_conexion().prepareStatement(sql);
			sentEliminar.executeUpdate();
		}catch(Exception e3) {
			JOptionPane.showMessageDialog(null, 
					"ERROR EN LA BUSQUEDA"+e3);
		}
    	return res;
    }

}
