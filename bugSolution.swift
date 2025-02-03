let numbers = [1, 2, 3, 4, 5]

let sum = numbers.reduce(0, +)

print(sum) // Output: 15

//Handle empty array case

let emptyNumbers: [Int] = []

let emptySum = emptyNumbers.reduce(0, +) 

print(emptySum) //Output: 0

//Safe way to use reduce with potential empty array:

func safeReduce<T, U>(array: [T], initial: U, combine: (U, T) -> U) -> U {
    guard !array.isEmpty else { return initial }
    return array.reduce(initial, combine)
}

let anotherEmptyNumbers: [Int] = []

let anotherEmptySum = safeReduce(array: anotherEmptyNumbers, initial: 0, combine: +)

print(anotherEmptySum) // Output: 0

let numbers2 = [1,2,3]
let sum2 = safeReduce(array: numbers2, initial: 0, combine: +)
print(sum2) // Output: 6