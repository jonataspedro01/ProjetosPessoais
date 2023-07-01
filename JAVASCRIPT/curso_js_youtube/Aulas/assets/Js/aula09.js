var nota = 20;
var res;

if(nota >=95){
 res="Aprovado com louvor";
}else if(nota >=60){
 res="Aluno aprovado";
}else if (nota >= 40) {
 res="Recuperação";
}else if(nota >=20){
 res="Aluno reprovado";   
}else{
 res="Aluno reprovado com louvor";
}
document.write(res);