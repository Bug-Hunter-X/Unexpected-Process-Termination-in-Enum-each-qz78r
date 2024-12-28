# Elixir Enum.each and Process.exit Bug

This repository demonstrates an uncommon Elixir bug related to using `Process.exit` within an `Enum.each` loop.  The code terminates unexpectedly when it encounters the value 3 in the list. This example highlights the importance of understanding the implications of using `Process.exit` in functional contexts and how it can affect the flow of execution.

**Bug Description:** The `Enum.each` function does not allow error handling or a graceful exit.  Using `Process.exit` in the function leads to the entire process being terminated, which might not always be the intended behavior.

**Solution:**  Using alternative approaches like `Enum.reduce` or a custom recursion function with proper error handling for more controlled termination or result gathering. See `bugSolution.exs` for a robust fix.