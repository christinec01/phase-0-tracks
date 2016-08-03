function longestPhrase(phraseArray){
var longest = '';
for (var i = 0; i < phraseArray.length; i++) {
if (longest.length < phraseArray[i].length) {
    longest = phraseArray[i];
  }
}
return longest
}

function keyValue(keyValuePairOne, keyValuePairTwo){
for (var key in keyValuePairOne) {
  if (keyValuePairOne[key] === keyValuePairTwo[key]){
    return true;
  }
}
return false
}

function randomString (integer){
  newArray = []
  randStr = ""
  alphArray = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  for (var i = 0; i < integer; i ++){
    var indexer= Math.floor((Math.random()*26)+1)
    Math.floor()*indexer
    randLetter = alphArray[Math.floor((Math.random()*26)+1)]
    randStr = randStr.concat(randLetter)
    newArray.push(randStr);
    

  }
return newArray
}


//Driver code
var keyValuePairOne={name: "Steven", age: 54}
var keyValuePairTwo = {name: "Tamir", age: 54}
// var keyValuePairTwo = {name: "David", age: 4} testing no matches
// var keyValuePairTwo = {name: "Tamir", age: 5} testing matching name
var phraseArray = ["long phrase","longest phrase","longer phrase"]

console.log(randomString(3))
console.log(longestPhrase(phraseArray))
console.log(keyValue(keyValuePairOne,keyValuePairTwo))
