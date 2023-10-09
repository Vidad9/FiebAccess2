import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AgendamentoServlet")
public class AgendamentoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Dados do formulário
        String nome = request.getParameter("horario");
        String horario = request.getParameter("categoria");

        // Conectar ao banco de dados (substitua com suas informações de conexão)
        String jdbcURL = "jdbc:mysql://localhost:8080/FiebAccess";
        String jdbcUsername = "sa";
        String jdbcPassword = "@ITB123456";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);

            // Inserir dados no banco de dados (substitua com sua consulta SQL)
            String sql = "INSERT INTO agendamentos (nome, horario, categoria) VALUES (?, ?, ?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, Horario);
            statement.setString(2, Categoria);
         
            int rowsInserted = statement.executeUpdate();
            if (rowsInserted > 0) {
                response.sendRedirect("sucesso.html"); // Redirecionar para página de sucesso
            } else {
                response.sendRedirect("erro.html"); // Redirecionar para página de erro
            }

            statement.close();
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("erro.html"); // Redirecionar para página de erro em caso de exceção
        }
    }
}
