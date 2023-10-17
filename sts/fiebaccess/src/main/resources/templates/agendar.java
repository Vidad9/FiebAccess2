import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

// Dentro do método de tratamento do clique do botão "Agendar"
try {
    // Estabelecer a conexão com o banco de dados
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/FiebAccess", "sa", "@ITB123456");

    // Preparar a consulta SQL para inserir os dados
    String sql = "INSERT INTO agendamentos (data, horario, categoria) VALUES (?, ?, ?)";
    PreparedStatement preparedStatement = conn.prepareStatement(sql);

    // Substituir os valores nos parâmetros da consulta
    preparedStatement.setString(1, dataDoFormulario);
    preparedStatement.setString(2, horarioDoFormulario);
    preparedStatement.setString(3, categoriaDoFormulario);

    // Executar a inserção no banco de dados
    int linhasAfetadas = preparedStatement.executeUpdate();

    // Verificar se a inserção foi bem-sucedida
    if (linhasAfetadas > 0) {
        System.out.println("Agendamento inserido com sucesso!");
    } else {
        System.out.println("Falha ao inserir o agendamento.");
    }

    // Fechar a conexão com o banco de dados
    conn.close();
} catch (SQLException e) {
    e.printStackTrace();
}
