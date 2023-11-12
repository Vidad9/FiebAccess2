import javax.servlet.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:8080/FiebAccess";
    private static final String DB_USER = "Vidad69_SQLLogin_1";
    private static final String DB_PASSWORD = "@ITB123456";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        if (autenticacaoValida(username, password)) {
            String role = obterPapelDoUsuario(username);

            if ("admin".equals(role)) {
                response.sendRedirect("adminScreen.html");
            } else if ("usuario".equals(role)) {
                response.sendRedirect("userScreen.html");
            }
        } else {
            response.sendRedirect("login.html");
        }
    }

    private boolean autenticacaoValida(String username, String password) {
        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:8080/FiebAccess", "Vidad69_SQLLogin_1", "@ITB123456")) {
            String sql = "SELECT * FROM usuarios WHERE username = ? AND password = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, username);
                preparedStatement.setString(2, password);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    return resultSet.next(); // Retorna true se as credenciais são válidas, caso contrário, false.
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    private String obterPapelDoUsuario(String username) {
        try (Connection connection = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String sql = "SELECT role FROM usuario WHERE username = ?";
            try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
                preparedStatement.setString(1, username);
                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        return resultSet.getString("role"); // Retorna o papel do usuário.
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
