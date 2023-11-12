import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
        // Obtenha os dados do formulário a partir do request
        String nome = request.getParameter("dataConsulta");
        String horario = request.getParameter("id_Horario");
        String categoria = request.getParameter("id_Categoria");


        // Conecte-se ao banco de dados e insira os dados
        // Lembre-se de usar um pool de conexão ou uma conexão adequada.
        // Aqui está um exemplo simplificado.
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:8080/FiebAccess", "Vidad69_SQLLogin_1", "@ITB123456");
            String sql = "INSERT INTO Consulta (dataConsulta, id_Horario, id_Categoria) VALUES (?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, dataConsulta);
            stmt.setString(2, id_Horario);
            stmt.setString(3, id_Categoria);
            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        // Redirecione o usuário para uma página de confirmação
        response.sendRedirect("land1.html");
    }
}
