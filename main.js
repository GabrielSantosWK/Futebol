const item = `<div class="lista-item"> 
<div class="posicao">
    <p>1º</p>
    <p class="nome-time">Pala</p>
</div>
<div class="dados">
    <p data-ponto>${5}</p>
    <p data-jogo>0</p>
    <p data-vitoria>0</p>
    <p data-empate>0</p>
    <p data-derrota>0</p>
    <p data-gp>0</p>
    <p data-gc>0</p>
    <p data-sg>0</p>
</div>
</div>  `;
function adicionarItens(){
  let lista = document.querySelector(".lista-classificacao");
  lista.insertAdjacentHTML('beforeend',item)
}
function criarLista(){
    for(var i=0;i<20;i++){
        adicionarItens();
    }
}
criarLista();