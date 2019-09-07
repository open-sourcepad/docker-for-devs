data = IO.binread("/opt/input.txt")
data = data.split(" ")

str = []
data.each do |x|
  str << x.to_i.chr
end
puts str.join