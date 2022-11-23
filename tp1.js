function calcul_moyenne()
{
    var note1=prompt("donner la première note: ");
    var coef1=prompt("Entrer son coefficient: ");
    var note2=prompt("donner la deuxième note: ");
    var coef2=prompt("Entrer son coefficient: ");
    var note3=prompt("donner la troisième note: ");
    var coef3=prompt("Entrer son coefficient: ");


    var somme = Number(note1)*Number(coef1)+Number(note2)*Number(coef2)+Number(note3)*Number(coef3);
    document.write ("Voici la somme des note: " + somme + "<br>");
    var sommecoef = Number(coef1)+Number(coef2)+Number(coef3);
    document.write ("Voici la somme des coefficients: " + sommecoef + "<br>");
    var moyenne= somme/sommecoef;

    document.write ("Voici la moyenne: " + moyenne + "<br>");

    if (moyenne<10)
    document.write("Vous êtes redoublant")
    else
    document.write("Vous êtes admis")
}

function test_age()
{
    var age=prompt("Entrer votre âge svp: ");

    if (age<18)
    {
    document.write ("Vous êtes mineur!!");
    document.bgColor="red";
    }
    else 
    {
    document.write ("Vous êtes majeur!!");
    document.bgColor="green";
    }
}

function simple_affichage()
{
    var nom=prompt("Donner votre nom: ")
    var prenom=prompt("Donner votre prénom")

    document.write("<div style='border:2px solid blue; width:50%; margin:auto; color:red;'>")
    document.write("Bonjour " + prenom + " " + nom)
    document.write("</div>")
}

function couleur()
{
    var c=prompt("Entrer une couleur svp: ");
    if (c == "rouge" || c == "Rouge" ||c == "ROUGE")
    document.body.style.background= "red";
    else if (c == "bleu" || c == "Bleu" || c == "BLEU")
    document.body.style.background= "blue";
    else if (c == "vert" || c == "Vert" || c == "VERT")
    document.body.style.background= "green";
    else if (c == "jaune || c == Jaune" || c == "JAUNE")
    document.body.style.background= "yellow";
    else
    document.write("Couleur non répertorié");   
}