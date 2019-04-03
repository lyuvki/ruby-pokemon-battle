class Pokemon
  attr_accessor :name,:hp,:attack_power
  def initialize(name:,hp:,attack_power:)
    @name = name
    @hp = hp
    @attack_power = attack_power
  end
end

pika = Pokemon.new(name: "ピカチュウ",hp: 30,attack_power: 13)
zeni = Pokemon.new(name: "ゼニガメ",hp: 50,attack_power: 6)

puts "*******************\n戦闘開始\n*******************"
  count = 0
 loop do
   count += 1
   if pika.hp <= 0 || zeni.hp <= 0
     break
   end
   puts "---------\n第#{count}戦\n---------"
    if pika.attack_power > zeni.attack_power
     puts [
      "#{pika.name}の残りHP:#{pika.hp}",
      "#{zeni.name}の残りHP:#{zeni.hp -= pika.attack_power}"
     ]
   elsif zeni.attack_power > pika.attack_power
     puts [
      "#{pika.name}の残りHP:#{pika.hp -= zeni.attack_power}",
      "#{zeni.name}の残りHP:#{zeni.hp}"
     ]
   end
   sleep(1)
 end
 sleep(2)
 puts "*******************\n決着！！！\n*******************"
 if pika.attack_power > zeni.attack_power
   puts "#{zeni.name}瀕死、、#{pika.name}の勝利！！"
 elsif zeni.attack_power > pika.attack_power
   puts "#{pika.name}瀕死、、#{zeni.name}の勝利！！"
 end


