def fibs(number)
  array = []

  if number == 1
    array[0] = 0
  elsif number == 2
    array[0] = 0
    array[1] = 1
  else
    array[0] = 0
    array[1] = 1
    for i in 2..number-1
      array[i] = array[i - 1] + array[i - 2]
    end
  end

  array
end

def fibs_rec(number)
  return [0] if number == 1
  return [0, 1] if number == 2

  array = fibs_rec(number - 1)
  array.push(array[-1] + array[-2])
end

p fibs(8)
p fibs_rec(8)