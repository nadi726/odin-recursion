def fibs(n)
  arr = []
  arr << 0 if n >= 1
  arr << 1 if n >= 2

  (n - 2).times do
    arr << (arr[-1] + arr[-2])
  end
  arr
end


def fibs_rec(n, arr = [])
  return [] if n <= 0
  return [0] + arr if n == 1
  return [0, 1] + arr if n == 2

  arr = fibs_rec(n - 1, arr)
  arr.push(arr[-1] + arr[-2])
end