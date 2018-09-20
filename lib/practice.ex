defmodule Practice do
  @moduledoc """
  Practice keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """

  def double(x) do
    2 * x
  end

  def calc(expr) do
    # This is more complex, delegate to lib/practice/calc.ex
    Practice.Calc.calc(expr)
  end

  def factor(x) do
    # Maybe delegate this too.
    list = []
    i = 2
    {val,noonecares} = Integer.parse(x)
    factorHelp(val, i, list)
  
    # factorHelp(x, i)
  end

  def factorHelp(val, i, list) do  
    cond do
      (val == 1) ->
        list ++ [val]
      (val == i) ->
        list ++ [val]
      rem(val, i) == 0 ->
        factorHelp(div(val, i), i, list ++ [i])
      true ->
        factorHelp(val, i + 1, list)
      end
  end

  # TODODONE: Add a palindrome? function.
  def palindrome(x) do
   String.reverse(x) == x
  end
end
