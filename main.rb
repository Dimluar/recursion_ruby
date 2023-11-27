# frozen_string_literal: true

def fibs(num)
  fib_array = [0, 1]
  fib_array << fib_array[-1] + fib_array[-2] until fib_array.length == num
  fib_array
end
