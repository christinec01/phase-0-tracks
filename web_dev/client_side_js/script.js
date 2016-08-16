
console.log ("The script is running");


function addDottedBorder() {
    var ourDiv=document.getElementById("main div");
     ourDiv.style.border = "10px dotted black";
}

function changeHeaderColor(event) {
  event.target.style.color = "red";
}

var ourHeaderColor = document.getElementById("main header");
ourHeaderColor.addEventListener("click",changeHeaderColor);

// changeHeaderColor();
addDottedBorder();
