function desenha() {
    var canvas = document.getElementById('canvas');
    var ctx = canvas.getContext('2d');
    ctx.fillRect(25, 25, 200, 200);
}


console.log(desenha())