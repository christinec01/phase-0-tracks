highway = {
  cars: {
    color: ['blue','green', 'red', 'yellow'],
    open_seats: {
      total_seats: 4,
      people:3
    },
    speeding: ["no", "slightly", "definitely"]
  },
  trucks: {
    color: 'grey',
    types: {
      has_cargo: "yes",

    },
    speeding:["yes", "a little", "no"]
  }

}


p highway[:cars][:speeding][0]
p highway[:cars][:color][-1]
p highway[:trucks][:speeding].push("definitely")
