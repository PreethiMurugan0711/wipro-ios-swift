let itemPrice: Double = 450.0
let quantity: Int = 3

let subtotal = itemPrice * Double(quantity)

let hasCoupon = true

let discount = hasCoupon && subtotal > 1000 ? subtotal * 0.10 : 0.0

let discountedAmount = subtotal - discount

let gst = discountedAmount * 0.18

let total = discountedAmount + gst

let numberOfPeople: Double = 4.0

let sharePerPerson = total / numberOfPeople

let amount = 1234

let hundreds = amount / 100
let remainder = amount % 100

print("----- Restaurant Bill -----")
print("Item Price: \(itemPrice)")
print("Quantity: \(quantity)")
print("Subtotal: \(subtotal)")
print("Discount: \(discount)")
print("Discounted Amount: \(discountedAmount)")
print("GST: \(gst)")
print("Total Bill: \(total)")
print("Each Person Pays: \(sharePerPerson)")

print("\n----- Amount Breakdown -----")
print("Hundreds: \(hundreds)")
print("Remainder: \(remainder)")