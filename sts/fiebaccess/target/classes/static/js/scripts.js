/* Pré Visualização da Imagem Escolhida */
function preViewImg() {
	var imgPreView = new FileReader();
	imgPreView.readAsDataURL(document.getElementById("uploadImage").files[0]);

	imgPreView.onload = function(imgPreViewEvent) {
		document.getElementById("preView").src = imgPreViewEvent.target.result;
	}
}

function saveEmail() {
	localStorage.setItem("myEmail", document.getElementById("inputEmail").value);
}

var mainContent = document.getElementById("mainContent");
function goPage() {
	var myEmail = localStorage.getItem("myEmail");
	
	console.log(myEmail);
	if(myEmail != null) {
		mainContent.className = "";
	} else {
		mainContent.className = "hide";
	}
}

function getEmail() {
	localStorage.setItem("myEmail", document.getElementById("inputEmail").value);
}

function goBack() {
	var myEmail = localStorage.getItem("myEmail");
	window.location.href = '/api/v1/usuario/main/' + myEmail;
}

function logout() {
	localStorage.removeItem("myEmail");
	window.location.href = '/api/v1/index';
}