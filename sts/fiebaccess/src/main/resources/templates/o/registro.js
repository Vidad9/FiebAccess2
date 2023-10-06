document.addEventListener("DOMContentLoaded", function() {
    const registroForm = document.getElementById("registroForm");

    registroForm.addEventListener("submit", function(event) {
        event.preventDefault();

        const nome = document.getElementById("nome").value;
        const email = document.getElementById("email").value;
        const senha = document.getElementById("senha").value;

        console.log("Nome: " + nome);
        console.log("E-mail: " + email);
        console.log("Senha: " + senha);

        // Você pode enviar esses dados para o servidor aqui para o registro real.
    });
});
