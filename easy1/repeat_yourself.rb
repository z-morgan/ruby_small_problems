def repeat(string, n)
  count = 1
  while count <= n
    puts string
    count += 1
  end
end

repeat('Hello World', 3)




def repeat2(string, n)
  n.times { puts string }
end

repeat2("Hello", 3)