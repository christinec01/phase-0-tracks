var string = "some string"
var newString = " "

for (var i = string.length-1; i >= 0; i--){
  newString+=  string[i];
}
console.log(newString);

console.log(newString+1)
