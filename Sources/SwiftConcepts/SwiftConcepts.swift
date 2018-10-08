struct SwiftConcepts {
static var text = "Hello, Nadeem Bhai!"
}


/// We could create an array of purchasable, if all elements inside the array were equatable.
/// that's the Conditional Conformance
protocol Purchasable {
func buy()
}

struct Book:Purchasable {
var name:String
func buy() {
print("Bought \(name) book")
}
}

/// the most noticible benefit of using conditional conformance is the ability for types that stores another types like an array, optional etc, to conform to equatable protocol so that these can be compared using == operator.
