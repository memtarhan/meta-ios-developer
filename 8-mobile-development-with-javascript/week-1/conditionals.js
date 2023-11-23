const light = "black"

// if-else
if (light === "green") {
    console.log("Drive")

} else if (light === "orange") {
    console.log("Get Ready")

} else if (light === "red") {
    console.log("Stop")

} else {
    console.log("Error")
}

// switch
switch (light) {
    case "green":
        console.log("Drive")
        break
    case "orange":
        console.log("Get Ready")
        break
    case "red":
        console.log("Stop")
        break
    default:
        console.log("Error")
        break
}