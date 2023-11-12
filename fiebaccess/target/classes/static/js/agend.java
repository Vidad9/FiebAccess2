import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AgendamentoService {
    // Método para verificar se a data e hora já foram agendadas
    public boolean isDataHorarioDisponivel(String data, String horario) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet resultSet = null;
        boolean disponivel = true;

        try {
            // Estabeleça a conexão com o banco de dados (substitua os detalhes da sua conexão)
            conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/FiebAccess", "Vidad69_SQLLogin_1", "@ITB123456");

            // Consulta SQL para verificar a disponibilidade
            String sql = "SELECT COUNT(*) FROM Consulta WHERE dataConsulta = ? AND id_Horario = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, dataConsulta);
            stmt.setString(2, id_Horario);

            // Execute a consulta e obtenha o resultado
            resultSet = stmt.executeQuery();

            if (resultSet.next()) {
                int count = resultSet.getInt(1);
                if (count > 0) {
                    disponivel = false; // Data e horário já foram agendados
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Trate qualquer erro de banco de dados aqui
        } finally {
            // Feche a conexão, o statement e o resultSet
            try {
                if (resultSet != null) resultSet.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return disponivel;
    }

    // Outros métodos para criar agendamento, etc.
}
// Receba e processe os dados enviados pelo administrador
String novaData = request.getParameter("novaData");
String novoHorario = request.getParameter("novoHorario");

// Execute uma instrução SQL UPDATE para atualizar o banco de dados
String sql = "UPDATE Consulta SET dataConsulta = ?, id_Horario = ? WHERE id_Categoria = ?";
try (PreparedStatement statement = conn.prepareStatement(sql)) {
    statement.setString(1, novaData);
    statement.setString(2, novoHorario);
    statement.setInt(3, id_Categoria); // Substitua pelo ID do agendamento que está sendo editado
    statement.executeUpdate();
} catch (SQLException e) {
    e.printStackTrace();
    // Trate erros de banco de dados
}
