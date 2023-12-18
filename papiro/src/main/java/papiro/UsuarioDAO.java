package papiro;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO {
	private Connection connection;

    public UsuarioDAO(Connection connection) {
        this.connection = connection;
    }
	
    public boolean inserirUsuario(Usuario usuario) {
        try {
            Conexao conexao = new Conexao();
            Connection connection = conexao.conectar();
            
            // primeira etapa: verificar se já existe o email
            /*String consultarEmailSQL = "SELECT * FROM usuarios where usuario = ?";
            PreparedStatement preparedStatement_ = connection.prepareStatement(consultarEmailSQL);
            preparedStatement_.setString(1, usuario.getUsuario());
            ResultSet resultSet = preparedStatement_.executeQuery();
            if (resultSet.next()) {
            	return false; // retorna false quando já houver o email
            } else { */
            // segunda etapa, sendo true preparar para inserir o usuário no banco de dados
            String inserirUsuarioSQL = "INSERT INTO usuarios ( usuario, senha, email, logradouro, numero,complemetno,bairro,cidade,cep,uf) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            // as linhas abaixo, estão montando o conteúdo da variável inserirUsuarioSQL. Cada interrogação acima
            // compreende um numero abaixo, na sequencia.. 1- nome, 2 - usuario ...
            PreparedStatement preparedStatement = connection.prepareStatement(inserirUsuarioSQL);
            preparedStatement.setString(1, usuario.getUsuario());
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.setString(3, usuario.getEmail());
            preparedStatement.setString(4, usuario.getLogradouro());
            preparedStatement.setString(5, usuario.getNumero());
            preparedStatement.setString(6, usuario.getComplemento());
            preparedStatement.setString(7, usuario.getBairro());
            preparedStatement.setString(8, usuario.getCidade());
            preparedStatement.setString(9, usuario.getCep());
            preparedStatement.setString(10, usuario.getUf());
            // por fim, a execução de toda a instrução
            preparedStatement.executeUpdate();

            // Não esqueça de fechar a conexão e liberar recursos
            preparedStatement.close();
            connection.close();
            return true;
          // }
        } catch (SQLException e) {
            e.printStackTrace(); // Lide com a exceção apropriadamente
           return false;
        }
    }
    
    public boolean apagarUsuario(String idUsuario) {
        try {
            Conexao conexao = new Conexao();
            Connection connection = conexao.conectar();
            
            // definindo a variável que vai conter o comando sql
            String apagarUsuarioSQL = "DELETE from usuarios where id = ?";
            // preencher o valor da interrogação acima
            PreparedStatement preparedStatement = connection.prepareStatement(apagarUsuarioSQL);
            preparedStatement.setString(1, idUsuario);
            // por fim, a execução de toda a instrução
            preparedStatement.executeUpdate();

            // Não esqueça de fechar a conexão e liberar recursos
            preparedStatement.close();
            connection.close();
            return true;
        } catch (SQLException e) {
            e.printStackTrace(); // Lide com a exceção apropriadamente
            return false;
        }
    }
    
    public List<Usuario> buscarUsuarios(String filtro, String valorDeBusca) {
        List<Usuario> arrayUsuarios = new ArrayList<>();

        try {
            Conexao conexao = new Conexao();
            Connection connection = conexao.conectar();

            String consultaSQL = "SELECT * FROM usuarios";
            
            if ("buscarPorUsuario".equals(filtro)) {
                consultaSQL += " WHERE usuario LIKE ?";
            }

            PreparedStatement preparedStatement = connection.prepareStatement(consultaSQL);

            if ("buscarPorUsuario".equals(filtro)) {
                preparedStatement.setString(1, valorDeBusca);
            }

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(resultSet.getInt("id"));
                usuario.setUsuario(resultSet.getString("usuario"));
                usuario.setSenha(resultSet.getString("senha"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setLogradouro(resultSet.getString("logradouro"));
                usuario.setNumero(resultSet.getString("numero"));
                usuario.setComplemento(resultSet.getString("complemento"));
                usuario.setBairro(resultSet.getString("Bairro"));
                usuario.setCidade(resultSet.getString("cidade"));
                usuario.setCep(resultSet.getString("cep"));
                usuario.setUf(resultSet.getString("uf"));

                arrayUsuarios.add(usuario);
            }

            resultSet.close();
            preparedStatement.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace(); // Lide com a exceção apropriadamente
        }

        return arrayUsuarios;
    }

    public boolean editarUsuario(Usuario usuario) {
    	try {
    		Conexao conexao = new Conexao();
            Connection connection = conexao.conectar();
            
            String editarUsuarioSQL = "UPDATE usuarios SET usuario = ?, senha = ?, email = ?, logradouro =?,numero =?,complemento = ?,bairro = ?,cidade = ?,cep = ?,uf = ? where id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(editarUsuarioSQL);
            preparedStatement.setString(1, usuario.getUsuario());
            preparedStatement.setString(2, usuario.getSenha());
            preparedStatement.setString(3, usuario.getEmail());
            preparedStatement.setString(4, usuario.getLogradouro());
            preparedStatement.setString(5, usuario.getNumero());
            preparedStatement.setString(6, usuario.getComplemento());
            preparedStatement.setString(7, usuario.getBairro());
            preparedStatement.setString(8, usuario.getCidade());
            preparedStatement.setString(9, usuario.getCep());
            preparedStatement.setString(10, usuario.getUf());
            preparedStatement.setInt(11, usuario.getId());
            // por fim, a execução de toda a instrução
            preparedStatement.executeUpdate();

            // Não esqueça de fechar a conexão e liberar recursos
            preparedStatement.close();
            connection.close();
            return true; 
            
    	} catch (Exception e) {
    		return false;
    	}
    }
    
    public List<Usuario> buscarPerfil(String id) {
        List<Usuario> arrayUsuarios = new ArrayList<>();

        try {
            Conexao conexao = new Conexao();
            Connection connection = conexao.conectar();

            String consultaSQL = "SELECT * FROM usuarios where id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(consultaSQL);
            preparedStatement.setString(1, id);
          
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(resultSet.getInt("id"));
                usuario.setUsuario(resultSet.getString("usuario"));
                usuario.setSenha(resultSet.getString("senha"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setLogradouro(resultSet.getString("logradouro"));
                usuario.setNumero(resultSet.getString("numero"));
                usuario.setComplemento(resultSet.getString("complemento"));
                usuario.setBairro(resultSet.getString("Bairro"));
                usuario.setCidade(resultSet.getString("cidade"));
                usuario.setCep(resultSet.getString("cep"));
                usuario.setUf(resultSet.getString("uf"));
                arrayUsuarios.add(usuario);
            }

            resultSet.close();
            preparedStatement.close();
            connection.close();

        } catch (SQLException e) {
            e.printStackTrace(); 
        }

        return arrayUsuarios;
    }
    
    // vou construir esse modelo diferente, do tipo String
    public String buscarEmail(String email) {
        try {
            Conexao conexao = new Conexao();
            Connection connection = conexao.conectar();
            
            // primeira etapa: verificar se já existe o email
            String consultarEmailSQL = "SELECT * FROM usuarios where usuario = ?";
            PreparedStatement preparedStatement_ = connection.prepareStatement(consultarEmailSQL);
            preparedStatement_.setString(1, email);
            ResultSet resultSet = preparedStatement_.executeQuery();
            if (resultSet.next()) {
            	email = "Encontrado";
            } 
        } catch (SQLException e) {
            e.printStackTrace(); 
        }
		return email;
    }  
}
