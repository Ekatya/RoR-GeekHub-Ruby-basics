alldays=10**9/60/60/24
years=alldays/365
puts "years=" + years.to_s
restdays=(alldays - years*365)
months=restdays/30
puts "months=" + months.to_s
days=(restdays-months*30)
puts "days=" + days.to_s

