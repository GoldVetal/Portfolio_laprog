function affichage_tableau()
{
document.write("<table border=2 width=30%;>");
    for (i=0; i <=5; i++)
    {
        document.write ("<tr><td>*<td><td>*<td><td>*<td><tr>")
    }
    document.write("</table>");
}

function affichage_tableau2()
{
    var ligne = prompt("Donner le nombre de lignes à afficher.");
    document.write("<table border=2; width=30%;>");
        for (i=1; i <=ligne; i++)
        {
            document.write("<tr><td>"+i+"</td><td>*</td><td>*</td></tr>")
        }
        document.write("</table>");
}

function connexion()
{
    var id = prompt("Donner votre nom d'utilisateur ");
    var mdp = prompt("Entrer votre mot de passe");
    if (id == "admin" && mdp == "admin")
    {
        document.write("Bienvenue  "+ id);
    }
    else
    {
        alert("Accès refusé");
    }
}

function connexion2()
{

}

function chaine_caractère()
{
    var chaine = prompt("Donner un mot");
    document.write(chaine.toUpperCase()+"<br>");
    document.write(chaine.toLowerCase()+"<br>");
    document.write("La chaîne contient  " + chaine.length+"  caractères "+"<br>");
    document.write("La première lettre est  "+chaine.substr(0,1)+"<br>");
}