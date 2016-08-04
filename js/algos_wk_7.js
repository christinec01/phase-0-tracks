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

// console.log(randomString(10))
// console.log(longestPhrase(phraseArray))
// console.log(keyValue(keyValuePairOne,keyValuePairTwo))

function generateNumberOfStrings(number) {
  // Make number of strings of random length
  var arrayOfStrings = [];
  for(var i = 0; i < number; i++){
    arrayOfStrings.push(generateRandomString());
  }
  // return array of strings
  return arrayOfStrings;
}

function generateRandomString() {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var randomString = "";
  var randomLength = generateRandomNumber(10);
  for (var i = 0; i<randomLength; i++){
    var randomLetterIndex = generateRandomNumber(26);
    var randomLetter = alphabet[randomLetterIndex];
    randomString = randomString.concat(randomLetter)
  }

  return randomString;
}

function generateRandomNumber(n) {
  return Math.floor(Math.random()*n)
}
console.log(generateRandomString());
console.log(generateNumberOfStrings(3))
console.log("release two question two");
for (var i = 0; i<10; i++){
  var myArray = generateNumberOfStrings(i)
  console.log(myArray);
  var myLongPhrase = longestPhrase(myArray);
  console.log(myLongPhrase);
}
