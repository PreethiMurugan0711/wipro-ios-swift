import Foundation

var celsius: Double = 25.0

let fahrenheitMultiplier: Double = 9.0 / 5.0
let fahrenheitOffset: Double = 32.0
let kelvinOffset: Double = 273.15

var fahrenheit = celsius * fahrenheitMultiplier + fahrenheitOffset
var kelvin = celsius + kelvinOffset

print("Temperature in Celsius: \(celsius)°C")
print("Temperature in Fahrenheit: \(String(format: "%.1f", fahrenheit))°F")
print("Temperature in Kelvin: \(String(format: "%.1f", kelvin))K")

celsius = 37.0

fahrenheit = celsius * fahrenheitMultiplier + fahrenheitOffset
kelvin = celsius + kelvinOffset

print("\nAfter Updating Celsius:")

print("Temperature in Celsius: \(celsius)°C")
print("Temperature in Fahrenheit: \(String(format: "%.1f", fahrenheit))°F")
print("Temperature in Kelvin: \(String(format: "%.1f", kelvin))K")