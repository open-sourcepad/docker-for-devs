result=`echo | docker exec dockerfordevs curl --retry 10 --retry-connrefused -sb -H http://0.0.0.0:3000/api/health_check`
puts "comparing #{result} with #{ARGV}"
if result == ARGV.join(' ')
  exit(0)
else
  exit(1)
end