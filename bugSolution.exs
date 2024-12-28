```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    #Handle the case where x == 3, add a nil to represent the failed operation.
    acc ++ [nil]
  else
    acc ++ [x]
  end
end)

IO.inspect(result)

#Alternative with custom recursion

defmodule MyEnum do
  def safe_each(list, acc \ []) do
    case list do
      [] -> acc
      [head | tail] ->
        if head == 3 do
          safe_each(tail, acc ++ [nil])
        else
          IO.puts(head)
          safe_each(tail, acc ++ [head])
        end
    end
  end
end

IO.inspect MyEnum.safe_each(list)
```