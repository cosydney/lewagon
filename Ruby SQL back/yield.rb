def timer
  start_time = Time.now
  yield
  puts "Elapsed time: #{Time.now - start_time}s"
end

timer() do
  puts "Wait while processing..."
  puts ".."
  sleep(1)
  puts "...."
  sleep(1)
  puts "....."
  sleep(1)
  puts "......"
  sleep(1)
  puts "I'm done :)"
end
# => I'm doing somethings slow...
# => I'm done :)
# => Elapsed time: 4s