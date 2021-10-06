function Avaliar(estrela) {
    var url = window.location;
    url = url.toString()
    url = url.split("avaliaSatisfacao.jsp");
    url = url[0];

    var s1 = document.getElementById("s1").src;
    var s2 = document.getElementById("s2").src;
    var s3 = document.getElementById("s3").src;
    var s4 = document.getElementById("s4").src;
    var s5 = document.getElementById("s5").src;
    var avaliacao = 0;

if (estrela === 5){ 
 if (s5 === url + "Imagem/star0.png") {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star1.png";
    document.getElementById("s3").src = "Imagem/star1.png";
    document.getElementById("s4").src = "Imagem/star1.png";
    document.getElementById("s5").src = "Imagem/star1.png";
    avaliacao = 5;
 } else {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star1.png";
    document.getElementById("s3").src = "Imagem/star1.png";
    document.getElementById("s4").src = "Imagem/star1.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 4;
}}
 
 //ESTRELA 4
if (estrela === 4){ 
 if (s4 === url + "Imagem/star0.png") {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star1.png";
    document.getElementById("s3").src = "Imagem/star1.png";
    document.getElementById("s4").src = "Imagem/star1.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 4;
 } else {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star1.png";
    document.getElementById("s3").src = "Imagem/star1.png";
    document.getElementById("s4").src = "Imagem/star0.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 3;
}}

//ESTRELA 3
if (estrela === 3){ 
 if (s3 === url + "Imagem/star0.png") {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star1.png";
    document.getElementById("s3").src = "Imagem/star1.png";
    document.getElementById("s4").src = "Imagem/star0.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 3;
 } else {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star1.png";
    document.getElementById("s3").src = "Imagem/star0.png";
    document.getElementById("s4").src = "Imagem/star0.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 2;
}}
 
//ESTRELA 2
if (estrela === 2){ 
 if (s2 === url + "Imagem/star0.png") {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star1.png";
    document.getElementById("s3").src = "Imagem/star0.png";
    document.getElementById("s4").src = "Imagem/star0.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 2;
 } else {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star0.png";
    document.getElementById("s3").src = "Imagem/star0.png";
    document.getElementById("s4").src = "Imagem/star0.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 1;
}}
 
 //ESTRELA 1
if (estrela === 1){ 
 if (s1 === url + "Imagem/star0.png") {
    document.getElementById("s1").src = "Imagem/star1.png";
    document.getElementById("s2").src = "Imagem/star0.png";
    document.getElementById("s3").src = "Imagem/star0.png";
    document.getElementById("s4").src = "Imagem/star0.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 1;
 } else {
    document.getElementById("s1").src = "Imagem/star0.png";
    document.getElementById("s2").src = "Imagem/star0.png";
    document.getElementById("s3").src = "Imagem/star0.png";
    document.getElementById("s4").src = "Imagem/star0.png";
    document.getElementById("s5").src = "Imagem/star0.png";
    avaliacao = 0;
}}
 
}

function Avaliar2(estrela) {
    var url = window.location;
    url = url.toString()
    url = url.split("avaliaSatisfacao.jsp");
    url = url[0];

    var s11 = document.getElementById("s11").src;
    var s12 = document.getElementById("s12").src;
    var s13 = document.getElementById("s13").src;
    var s14 = document.getElementById("s14").src;
    var s15 = document.getElementById("s15").src;
    var avaliacao = 0;

if (estrela === 5){ 
 if (s15 === url + "Imagem/star0.png") {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star1.png";
    document.getElementById("s13").src = "Imagem/star1.png";
    document.getElementById("s14").src = "Imagem/star1.png";
    document.getElementById("s15").src = "Imagem/star1.png";
    avaliacao = 5;
 } else {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star1.png";
    document.getElementById("s13").src = "Imagem/star1.png";
    document.getElementById("s14").src = "Imagem/star1.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 4;
}}
 
 //ESTRELA 4
if (estrela === 4){ 
 if (s14 === url + "Imagem/star0.png") {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star1.png";
    document.getElementById("s13").src = "Imagem/star1.png";
    document.getElementById("s14").src = "Imagem/star1.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 4;
 } else {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star1.png";
    document.getElementById("s13").src = "Imagem/star1.png";
    document.getElementById("s14").src = "Imagem/star0.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 3;
}}

//ESTRELA 3
if (estrela === 3){ 
 if (s13 === url + "Imagem/star0.png") {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star1.png";
    document.getElementById("s13").src = "Imagem/star1.png";
    document.getElementById("s14").src = "Imagem/star0.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 3;
 } else {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star1.png";
    document.getElementById("s13").src = "Imagem/star0.png";
    document.getElementById("s14").src = "Imagem/star0.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 2;
}}
 
//ESTRELA 2
if (estrela === 2){ 
 if (s12 === url + "Imagem/star0.png") {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star1.png";
    document.getElementById("s13").src = "Imagem/star0.png";
    document.getElementById("s14").src = "Imagem/star0.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 2;
 } else {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star0.png";
    document.getElementById("s13").src = "Imagem/star0.png";
    document.getElementById("s14").src = "Imagem/star0.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 1;
}}
 
 //ESTRELA 1
if (estrela === 1){ 
 if (s11 === url + "Imagem/star0.png") {
    document.getElementById("s11").src = "Imagem/star1.png";
    document.getElementById("s12").src = "Imagem/star0.png";
    document.getElementById("s13").src = "Imagem/star0.png";
    document.getElementById("s14").src = "Imagem/star0.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 1;
 } else {
    document.getElementById("s11").src = "Imagem/star0.png";
    document.getElementById("s12").src = "Imagem/star0.png";
    document.getElementById("s13").src = "Imagem/star0.png";
    document.getElementById("s14").src = "Imagem/star0.png";
    document.getElementById("s15").src = "Imagem/star0.png";
    avaliacao = 0;
}}
 
}

function Avaliar3(estrela) {
    var url = window.location;
    url = url.toString()
    url = url.split("avaliaSatisfacao.jsp");
    url = url[0];

    var s21 = document.getElementById("s21").src;
    var s22 = document.getElementById("s22").src;
    var s23 = document.getElementById("s23").src;
    var s24 = document.getElementById("s24").src;
    var s25 = document.getElementById("s25").src;
    var avaliacao = 0;

if (estrela === 5){ 
 if (s25 === url + "Imagem/star0.png") {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star1.png";
    document.getElementById("s23").src = "Imagem/star1.png";
    document.getElementById("s24").src = "Imagem/star1.png";
    document.getElementById("s25").src = "Imagem/star1.png";
    avaliacao = 5;
 } else {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star1.png";
    document.getElementById("s23").src = "Imagem/star1.png";
    document.getElementById("s24").src = "Imagem/star1.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 4;
}}
 
 //ESTRELA 4
if (estrela === 4){ 
 if (s24 === url + "Imagem/star0.png") {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star1.png";
    document.getElementById("s23").src = "Imagem/star1.png";
    document.getElementById("s24").src = "Imagem/star1.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 4;
 } else {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star1.png";
    document.getElementById("s23").src = "Imagem/star1.png";
    document.getElementById("s24").src = "Imagem/star0.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 3;
}}

//ESTRELA 3
if (estrela === 3){ 
 if (s23 === url + "Imagem/star0.png") {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star1.png";
    document.getElementById("s23").src = "Imagem/star1.png";
    document.getElementById("s24").src = "Imagem/star0.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 3;
 } else {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star1.png";
    document.getElementById("s23").src = "Imagem/star0.png";
    document.getElementById("s24").src = "Imagem/star0.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 2;
}}
 
//ESTRELA 2
if (estrela === 2){ 
 if (s22 === url + "Imagem/star0.png") {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star1.png";
    document.getElementById("s23").src = "Imagem/star0.png";
    document.getElementById("s24").src = "Imagem/star0.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 2;
 } else {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star0.png";
    document.getElementById("s23").src = "Imagem/star0.png";
    document.getElementById("s24").src = "Imagem/star0.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 1;
}}
 
 //ESTRELA 1
if (estrela === 1){ 
 if (s21 === url + "Imagem/star0.png") {
    document.getElementById("s21").src = "Imagem/star1.png";
    document.getElementById("s22").src = "Imagem/star0.png";
    document.getElementById("s23").src = "Imagem/star0.png";
    document.getElementById("s24").src = "Imagem/star0.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 1;
 } else {
    document.getElementById("s21").src = "Imagem/star0.png";
    document.getElementById("s22").src = "Imagem/star0.png";
    document.getElementById("s23").src = "Imagem/star0.png";
    document.getElementById("s24").src = "Imagem/star0.png";
    document.getElementById("s25").src = "Imagem/star0.png";
    avaliacao = 0;
}}
 
 function media() {
     document.write(estrela);
 }
}