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
    i = 2
    # factorHelp(x, i)
  end

  def factorHelp(x, i) do
   if (rem(x, i) == 0) do
     i * 1
     x = x / i
     factorHelp(x, i)
   else
    i++
    factorHelp(x, i)
   end
  end

  # TODODONE: Add a palindrome? function.
  def palindrome(x) do
   String.reverse(x) == x
  end
end
