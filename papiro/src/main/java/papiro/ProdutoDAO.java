package papiro;
	
import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.ArrayList;
	import java.util.List;

	public class ProdutoDAO {
		
		private Connection connection;

	    public ProdutoDAO(Connection connection) {
	        this.connection = connection;
	    }
		
	    public boolean inserirProduto(Produto produto) {
	        try {
	            Conexao conexao = new Conexao();
	            Connection connection = conexao.conectar();
	            
	            
	            // preparar para inserir o PRODUTO no banco de dados 
	            /*
	             * 1 - Complete o código mysql para inserir um novo registro de produto 
	             */
	            String inserirProdutoSQL = "INSERT INTO produto (id, nome, descricao) VALUES (?, ?, ?)";
	            
	            PreparedStatement preparedStatement = connection.prepareStatement(inserirProdutoSQL);
	            preparedStatement.setString(1, produto.getNome());
	            preparedStatement.setString(2, produto.getDescricao());
	       

	            // por fim, a execução de toda a instrução
	            preparedStatement.executeUpdate();

	            // Não esqueça de fechar a conexão e liberar recursos
	            /*
	             * 2 - feche os recursos que foram abertos antes do return 
	             */
	            preparedStatement.close();
	            connection.close();
	            
	            return true;
	          // }
	        } catch (SQLException e) {
	            e.printStackTrace(); 
	           return false;
	        }
	    }
	    
	    public boolean apagarProduto(String idProduto) {
	        try {
	            Conexao conexao = new Conexao();
	            Connection connection = conexao.conectar();
	            
	            // definindo a variável que vai conter o comando sql
	            /* 
	             * 3 - complete o comando mysql para apagar o registro de produto 
	             */
	            String apagarProdutoSQL = "DELETE from produto where id = ?";
	            // preencher o valor da interrogação acima
	            PreparedStatement preparedStatement = connection.prepareStatement(apagarProdutoSQL);
	            preparedStatement.setString(1, idProduto);
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
	    
	    public List<Produto> buscarProdutos(String filtro, String valorDeBusca) {
	        List<Produto> arrayProdutos = new ArrayList<>();

	        try {
	            Conexao conexao = new Conexao();
	            Connection connection = conexao.conectar();

	            String consultaSQL = "SELECT * FROM produto";
	            
	            if ("buscarPorNome".equals(filtro)) {
	                consultaSQL += " WHERE descricao LIKE ?";
	            }
	            System.out.println(consultaSQL);
	            PreparedStatement preparedStatement = connection.prepareStatement(consultaSQL);

	            if ("buscarPorNome".equals(filtro)) {
	                preparedStatement.setString(1, valorDeBusca);
	            }

	            ResultSet resultSet = preparedStatement.executeQuery();

	            while (resultSet.next()) {
	                Produto produto = new Produto();
	                produto.setId(resultSet.getInt("id"));
	                produto.setNome(resultSet.getString("nome"));
	                produto.setDescricao(resultSet.getString("descricao"));
	                
	                arrayProdutos.add(produto);
	            }

	            resultSet.close();
	            preparedStatement.close();
	            connection.close();

	        } catch (SQLException e) {
	            e.printStackTrace(); // Lide com a exceção apropriadamente
	        }

	        return arrayProdutos;
	    }

	    public boolean editarProduto(Produto produto) {
	    	try {
	    		Conexao conexao = new Conexao();
	            Connection connection = conexao.conectar();
	            
	            String editarProdutoSQL = "UPDATE produto SET nome = ?, descricao = ?,  where id = ?";
	            PreparedStatement preparedStatement = connection.prepareStatement(editarProdutoSQL);
	            /*  
	             * 4 Passe os atributos de Produto para completar a linha de editarProdutoSQL acima
	             */
	            preparedStatement.setString(1, produto.getNome());
	            preparedStatement.setString(2, produto.getDescricao());
	            
	            
	            
	            
	            
	            
	            
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
	    
	    
	    // vou construir esse modelo diferente, do tipo String
	    public String buscarNome(String nomes) {
	        try {
	            Conexao conexao = new Conexao();
	            Connection connection = conexao.conectar();
	            
	            // verificar se já existe o codbarra
	            /* 
	             * 5 - complete o código mysql abaixo para a verificar se já existe o código de barras do parametro da função 
	             */
	            String consultarNomeSQL = "SELECT * FROM produto where produto = ? ";
	            PreparedStatement preparedStatement_ = connection.prepareStatement(consultarNomeSQL);
	            preparedStatement_.setString(1, nomes);
	            ResultSet resultSet = preparedStatement_.executeQuery();
	            if (resultSet.next()) {
	            	nomes = "Encontrado";
	            } 
	        } catch (SQLException e) {
	            e.printStackTrace(); 
	        }
			return nomes;
	    }  
	    
	    public List<Produto> buscarId(String id) {
	        List<Produto> arrayProdutos = new ArrayList<>();

	        try {
	            Conexao conexao = new Conexao();
	            Connection connection = conexao.conectar();

	            String consultaSQL = "SELECT * FROM produto where nome = ?";
	            PreparedStatement preparedStatement = connection.prepareStatement(consultaSQL);
	            preparedStatement.setString(1, id);
	          
	            ResultSet resultSet = preparedStatement.executeQuery();

	            while (resultSet.next()) {
	                Produto produto = new Produto();         
	                produto.setId(resultSet.getInt("id"));
	                produto.setNome(resultSet.getString("nome"));
	                produto.setDescricao(resultSet.getString("descricao"));
	               
	                arrayProdutos.add(produto);
	            }

	            resultSet.close();
	            preparedStatement.close();
	            connection.close();

	        } catch (SQLException e) {
	            e.printStackTrace(); 
	        }

	        return arrayProdutos;
	    }
	    
	}



