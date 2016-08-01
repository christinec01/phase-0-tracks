// js reverse method would take a string as a parameter (string)
// and return the string with the positions of the characters reversed

function reversedString(string){

  var newString = ""

for (var i = string.length-1; i >= 0; i--){
newString+=  string[i];
}
return newString
}

console.log('Driver code!')
console.log(reversedString("hello"))
console.log(reversedString("goodbye"))
