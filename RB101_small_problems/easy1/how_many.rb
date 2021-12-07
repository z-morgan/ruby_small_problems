vehicles = [
  'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'truck', 'suv'
]

def count_occurrences(arr)
  hash = {}

  arr.each do |element|
    element = element.downcase
    if hash.include?(element)
      hash[element] += 1
    elsif
      hash[element] = 1
    end
  end
  
  hash.each { |k, v| puts "#{k} => #{v}" }
end

count_occurrences(vehicles)