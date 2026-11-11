var price: Int = 250
var quantity: Int = 3
let taxRate: Double = 0.18

price = 300

let total = Double(price * quantity) * (1 + taxRate)

var title = "Order"

print("Product: \(title)")
print("Price: \(price)")
print("Quantity: \(quantity)")
print("Tax Rate: \(taxRate * 100)%")
print("Total including tax: \(total)")