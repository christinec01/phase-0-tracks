//start with a variable that holds an array of strings of varying length
var myArray = ["long phrase","longest phrase","longer phrase"]
//also creat a variable that will hold the current longest string
function longestWord(myArray){
  var longestString = " "
  //iterate through the array of strings and compare the length of the
  //current string with the length of the current highest string
  for (var i = 0; i < myArray.length; i++){
    if (myArray[i].length > longestString.length){
      longestString = myArray[i]
    }
  }

  return longestString
}

console.log(longestWord(myArray))
