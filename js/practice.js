var myArray = []
for (var i = 0; i <= 10; i++){
  myArray.push(i)
}
console.log(myArray);

console.log('===========reversing string==========')

var myString = "string"
var holderCell = []
for (var i = myString.length-1; i >= 0; i --){
  holderCell.push(myString[i])
}

console.log(holderCell.join(','));

console.log('==========longest string challenge==========')

function longestString(myArray){
var myArray = ['word', 'long word', 'longer word', 'really long word', 'longish word', 'more word']
var longWord = ""
  for (var i = 0; i < myArray.length-1; i++){
    if (myArray[i].length > longWord.length){
       longWord = myArray[i]
    }
  }
  return longWord
}
console.log(longestString(myArray));

console.log('=========random string generator===============')
function randomString(length){
  var newArray = []
  var array = []
  var alphaArray = "abcdefghijklmnopqrstuvwxyz"
  for (var i = 0; i< length; i++){
    var randomStringLength = Math.floor(Math.random()*10)
  for (var i = 0; i<randomStringLength; i++){
newArray.push((alphaArray[Math.floor(Math.random()*(alphaArray.length))]))
  }
  }
  // for (var i = 0; i < array.length; i ++){
  //   newArray = alphaArray[array[i]]
  // }
// return newArray
return newArray
}
console.log(randomString(3))
