function affichage_tableau(){
document.write("<table border=2 width=30%;>")
for(i=0; i<=5; i++)
{
    document.write("<tr><td>*</td><td>*</td><td>*</td></tr>")
}
document.write("</table>");

}
function affichage_tableau2(){
var ligne =prompt("donner le nombre de ligne à afficher")

    document.write("<table border=2 width=30%;>")
    for(i=0; i<ligne; i++ )
    {
        document.write("<tr><td>"+i+"</td><td>A</td><td>B</td></tr>")
    }
    document.write("</table>");
}

function connexion(){
    var id = prompt("Donnez votre nom d'utilisateur");
    var mdp = prompt("Donnez votre mot de passe");
    
    if (id =="admin" && mdp == "admin") 
    {
        document.write("Bienvenue         "+id);
    }
    else
    {
        alert("Acces refusé désolé Pirate");
    }

}
function connexion_boucle(){
var i=0;
do {


    var id = prompt("Donnez votre nom d'utilisateur");
var mdp = prompt("Donnez votre mot de passe");

if (id =="admin" && mdp == "admin") 
{
    document.write("Bienvenue         "+id);
    break;
}
else

    alert("Acces refusé désolé Pirate");
    i += 1; 
} while (i < 3);
if (i==3)
alert("délai dépassé");

}

function fun_switch(){

var color = prompt("entrez une couleur");

switch(color)
{
    case "vert": document.body.style.background = "green";;
    break;
    case "VERT": document.body.style.background = "green";;
    break;
    case "bleu": document.body.style.background = "blue";;
    break;
    case "BLEU": document.body.style.background = "blue";;
    break;
    case "rouge": document.body.style.background = "red";;
    break;
    case "ROUGE": document.body.style.background = "red";;
    break;
    default: alert("couleur non défini");
}

}
function chaine_caractere(){
    var mot =prompt("saisir un mot");
    var firstlettre = mot.length;
    document.write("<br><b> Le mot saisie est : "+mot+"</b>");
    document.write ("<br>La première lettre du mot <strong> <span style='color:blue;'> "+mot+" </span> </strong> est : "+mot.substr(0,1)+" et il se compose de "+firstlettre+" caratères ");
    var lastlettre = mot.substr(-1);
    document.write ("<br>La dernière lettre du mot <strong> <span style='color:blue;'> "+mot+" </span> </strong> est : " +lastlettre);
    

}

var nbClic=0;
function clic(){
    nbClic++; //incrémente nbClic de 1
    if (nbClic>=3){
        alert('Perdu!!\nVous avez cliqué '+nbClic+' fois');
    }
}
function raz(){
    nbClic=0;
}