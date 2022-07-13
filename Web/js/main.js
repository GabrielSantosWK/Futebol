/*const item = `<div class="lista-item"> 
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
*/

function item(item){
    return  `<div class="lista-item"> 
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
     
}
function adicionarItens(item){
  let lista = document.querySelector(".lista-classificacao");
  lista.insertAdjacentHTML('beforeend',item)
}
function criarLista(json){
    console.log(json);
    for(var item in json){
        console.log(item);
        //adicionarItens(item);
    }
}

function getTime(){
    fetch('http://192.168.237.74:9000/times')
    .then(function(response) {
    return response.json();
    }).then((response=>{
        criarLista(response.DATA);
        //console.log(response.DATA);
    }));
}
getTime();