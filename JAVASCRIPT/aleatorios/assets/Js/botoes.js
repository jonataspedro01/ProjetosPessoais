var botoes = document.getElementsByClassName("btn btn-primary");

for (var i = 0; i < botoes.length; i++) {
    var botao = botoes[i];
    botao.addEventListener("click", function () {
        if (this.textContent === "Selecionar") {
            this.textContent = "Selecionado";
        } else {
            this.textContent = "Selecionar";
        }
    });
}