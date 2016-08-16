
console.log ("The script is running");


function addDottedBorder() {
    var ourDiv=document.getElementById("main div");
     ourDiv.style.border = "10px dotted black";
}

function changeHeaderColor() {
  var ourHeaderColor = document.getElementById("main header");
  ourHeaderColor.style.color = "red";
}

document.getElementById("main header").addEventListener("click",changeHeaderColor);

// changeHeaderColor();
addDottedBorder();
