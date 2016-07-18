//Release 0
//start with a variable that holds an array of strings of varying length
var myArray = ["long phrase","longest phrase","longer phrase"]
var testArray = ["hi", "bye", "hello"]
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
//Driver Code
console.log(longestWord(myArray))
console.log(longestWord(testArray))

//Release 1
//Write a function that takes two objects
function keyValue(obj1, obj2){
  //The fuction should check to see if the objects share a k:v pair
  for (var key in obj1){
    if(obj1[key] === obj2[key]) {
      return true;
    }
  }
  return false;
}
//test code
obj1 = {name: "Steven", age: 54}
obj3 = {name: "Steven", age: 54}

obj2 = {name: "Tamir", age: 54}
console.log(keyValue(obj1, obj2))

// Release 2
//write a function that takes an integer
function integerTaker(integer){
  var stringArray = []
  for (var i = 0; i < integer; i++){
    var ranLength = Math.floor(Math.random()*10)
    var ranString = ""
    for (var u = 0; u < ranLength; u++){
      ranString += 'h'

    }
    stringArray.push(ranString)
  }
//generate strings of random lengths 'ineger'number of times
return stringArray
}
console.log (integerTaker(3))
