
class Pitomez

def initialize 

@s1=['сдох с голоду ',' грызет с голодухи хвост ',' проголодался ',' сытый ',' не голодный ']
@s2=['сдох от скуки',' злой ',' равнодушный ',' веселый ']
@s3=['наелся всякой грязи и откинулся',' вонючий ',' грязный ',' чистый ',' блестит на солнце ']
@s4=['убился головой об стенку',' тупой как валенок ',' средне образованный ', ' не уступает Анатолию Вассерману в умственных способностях ']
@s5=['кокнул от гриппа',' болеет ',' хилый ', ' не болеет ',' здоровый падла ']
@komandi=['help','osmotret','igrat','gulat','sok','piza','frukti','spat','umivat','kupat','uchit','tabletka','exit']
@deistvie=['поиграем','пойдем на прогулку','держи сок','вот тебе вкусная пицца','немного здоровой еды','будем спать','умоем','пора купаться','нада учиться-не ной','глотай таблетку-ты болен']


time = Time.now
@time_rojdenia=time.strftime("%H:%M:%S") 

@n1=rand(10)+1 #сытость
@n2=rand(10)+1 #настроение
@n3=rand(10)+1 #чистота
@n4=rand(10)+1 #ум
@n5=rand(10)+1 #здоровье

@name=''

while @name==''
puts '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^'
puts ' Родился дракончик, время рождения-'+@time_rojdenia
 
#
#

puts 'Назовите его'
@name=gets.chomp

end

puts 'Команды управления дракошей ' + @name
puts '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^'

puts @komandi

puts 'Что будем делать дальше???'

kk=''
while (kk!='exit')
kk=gets.chomp
puts '^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^'
case kk 
when 'help'
 help
when 'exit'
 exit
when 'osmotret'
 osmotret
when 'igrat'
 igrat
when 'gulat'
 gulat
when 'sok'
sok
when 'piza'
piza
when 'frukti'
frukti
when 'spat'
spat
when 'umivat'
umivat
when 'kupat'
kupat
when 'uchit'
uchit
when 'tabletka'
tabletka

end

end

end
#-----------------------------

def pokazateli_drakonchika (s,s1)

time = Time.now
@time_smerti=time.strftime("%H:%M:%S") 

case s
when 0
   puts s1[0].to_s
    puts 'Время рождения ' + @time_rojdenia
    puts 'Время смерти '+@time_smerti
    exit
when 1 .. 3
   puts s1[1].to_s
when 4 .. 6
   puts s1[2].to_s
when 7 .. 9
   puts s1[3].to_s
when 10
   puts s1[4].to_s
end



end
#----------------------------------------
def lolo (x)
if (x<0) 
x==0
end

if (x>10) 
x==10
end
return x.to_i
end
#------------
def osmotret
puts "Дракончик " + @name

@n1=lolo @n1
@n2=lolo @n2
@n3=lolo @n3
@n4=lolo @n4

pokazateli_drakonchika @n1,@s1
pokazateli_drakonchika @n2,@s2
pokazateli_drakonchika @n3,@s3
pokazateli_drakonchika @n4,@s4
pokazateli_drakonchika @n5,@s5
end 


def help
puts @komandi
end

#---
def deistvie (s1)
puts @deistvie[s1]+' '+@name
puts '...'
sleep(3)
end
#---

def proverit_
if (@n1<=0) or (@n2<=0) or (@n3<=0) or (@n4<=0) 
osmotret
end
puts 'Что будем делать дальше???'
end

private

def igrat
@n1=@n1-rand(2)
@n2=@n2+rand(2)
deistvie 0
pokazateli_drakonchika @n1,@s1
pokazateli_drakonchika @n2,@s2
proverit_
end

def gulat
@n3=@n3-rand(3)
@n1=@n1-rand(2)
@n4=@n4+rand(3)
@n5=@n5+rand(1)
@n2=@n2+rand(2)
deistvie 1
proverit_
end

def sok
@n1=@n1+rand(2)
@n5=@n5+rand(3)
deistvie 2
pokazateli_drakonchika @n1,@s1
pokazateli_drakonchika @n5,@s5
proverit_
end

def piza
@n1=@n1+rand(3)
@n5=@n5-rand(2)
deistvie 3
pokazateli_drakonchika @n5,@s5
pokazateli_drakonchika @n1,@s1
proverit_
end

def frukti
@n1=@n1+rand(2)
@n2=@n2-rand(2)
@n5=@n5+rand(2)
deistvie 4
pokazateli_drakonchika @n1,@s1
pokazateli_drakonchika @n5,@s5
pokazateli_drakonchika @n2,@s2
proverit_
end

def spat
@n1=@n1-rand(2)
@n5=@n5+rand(2)
@n4=@n4-rand(1)
deistvie 5
proverit_
end

def umivat
@n3=@n3+rand(2)
deistvie 6
pokazateli_drakonchika @n3,@s3
proverit_
end

def kupat
@n3=@n3+rand(2)
deistvie 7
pokazateli_drakonchika @n3,@s3
proverit_
end

def uchit
@n4=@n4+rand(2)
deistvie 8
pokazateli_drakonchika @n4,@s4
proverit_
end

def tabletka
@n5=@n5+rand(1)
@n2=@n2-rand(1)
deistvie 9
pokazateli_drakonchika @n5,@s5
proverit_
end



end

Pitomez.new
