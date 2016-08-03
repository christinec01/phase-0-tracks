var colorArray = ["red", "blue", "purple", "orange"]
var horseArray = ["ruby", "dixen", "cherry", "ed"]
var horse = {}
for(var i = 0; i < horseArray.length; i++){
horse[horseArray[i]] = colorArray[i]
}
// console.log(horse);

// colorArray.push("green");
// horseArray.push("fido");
//
// console.log(colorArray);
// console.log(horseArray);
function Car(color, type){
  console.log("Our new car:", this);
  this.color = color;
  this.type = type;
  this.honk = function() {
    console.log("beep beep!");
  };
}

var car = new Car("Red", "SUV");
console.log(car);
car.honk();

var newCar = new Car("Blue", "truck");
console.log(newCar);
newCar.honk();

for (var key in car){
  console.log(car[key]);
}
for (var key in car){
  console.log(key);
}
