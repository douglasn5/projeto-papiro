package papiro;
import java.sql.*;
import com.mysql.cj.jdbc.Driver;


public class Conexao {

	// importação das bibliotecas para o sql e banco


		
		// abaixo o método chama excessçai de SQL
		public Connection conectar() throws SQLException {
			try {
				// Classe do mysql
				Class.forName("com.mysql.cj.jdbc.Driver"); 
				// Retorno do drive do banco com usuario, senha e outros
				return DriverManager.getConnection(
				"jdbc:mysql://localhost/papiro?useTimezona=true&serverTimezone=UTC&user=root&password=");
				
			}catch(ClassNotFoundException e) {
				throw new RuntimeException(e);
			}
		}
}
