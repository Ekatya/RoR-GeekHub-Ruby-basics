class Ball
def shake
arr = ['NOT TODAY', 'NO', 'YES', 'NEVER', 'MAY BE', 'ABS', 'SURE', 'EXPECTING', 'WAIT','SMILE', 'GO AWAY', 'GO ON','ASK MOM']
ans=arr[rand(13)+1]
end
end

puts "ask Me!"
a=gets.chomp
puts "thinking"
sleep(2)
puts d=Ball.new.shake
sleep(2)
puts "ask Me again or type: enough"
a=gets.chomp
while a!="enough"
	puts "thinking"
sleep(2)
puts d=Ball.new.shake
sleep(2)
puts "ask Me again or type: enough"
a=gets.chomp
end
	puts "Good Luck!"