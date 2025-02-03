# Swift Reduce Function Crash on Empty Array

This repository demonstrates a common error when using the `reduce` function in Swift with an empty array.  If you don't provide an initial value, `reduce` will crash at runtime.

The `bug.swift` file shows the problematic code.  The `bugSolution.swift` file provides a corrected version.

This issue arises because the `reduce` function needs a starting value to accumulate. When the array is empty and no initial value is supplied, there's nothing to start with, leading to a runtime error.

The solution involves always providing an initial value, even if it's a default value appropriate for your data type.