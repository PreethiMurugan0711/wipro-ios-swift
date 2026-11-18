enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)

    var area: Double {
        switch self {
        case .circle(let radius):
            return Double.pi * radius * radius

        case .rectangle(let width, let height):
            return width * height

        case .triangle(let base, let height):
            return 0.5 * base * height
        }
    }
}

struct Rectangle {
    var width: Double
    var height: Double

    var perimeter: Double {
        return 2 * (width + height)
    }

    mutating func scale(by factor: Double) {
        width *= factor
        height *= factor
    }
}

print("----- Shape Areas -----")

let circle = Shape.circle(radius: 5)
let rectangleShape = Shape.rectangle(width: 10, height: 5)
let triangle = Shape.triangle(base: 8, height: 6)

print("Circle Area: \(circle.area)")
print("Rectangle Area: \(rectangleShape.area)")
print("Triangle Area: \(triangle.area)")

print("\n----- Rectangle Structure -----")

var originalRectangle = Rectangle(width: 10, height: 5)

print("Original Width: \(originalRectangle.width)")
print("Original Height: \(originalRectangle.height)")
print("Original Perimeter: \(originalRectangle.perimeter)")

var copiedRectangle = originalRectangle

copiedRectangle.scale(by: 2)

print("\nAfter Scaling the Copy:")

print("Original Width: \(originalRectangle.width)")
print("Original Height: \(originalRectangle.height)")

print("Copied Width: \(copiedRectangle.width)")
print("Copied Height: \(copiedRectangle.height)")
print("Copied Perimeter: \(copiedRectangle.perimeter)")