class Pokemon
  def initialize
    @status = [{pika: 30,zeni: 50},{pika: 13,zeni: 6}]
  end

  def battle
    puts [
      "****************************",
      "戦闘開始",
      "****************************"
    ]
      count = 0
     loop do
      count += 1
       if @status[0][:zeni] <= 0 || @status[0][:pika] <= 0
         break
       end
       if count >= 2
       sleep(1)
      end
        puts [
          "--------",
          "第#{count}戦",
          "--------"
         ]
      if @status[1][:pika] > @status[1][:zeni]
        puts [
          "ピカチュウの残りHP: #{@status[0][:pika]}",
          "ゼニガメの残りHP: #{@status[0][:zeni] -= @status[1][:pika]}"
        ]
      elsif @status[1][:zeni] > @status[1][:pika]
        puts [
          "ピカチュウの残りHP: #{@status[0][:pika] -= @status[1][:zeni]}",
          "ゼニガメの残りHP: #{@status[0][:zeni]}"
        ]
      end
    end
    sleep(2)
      puts [
        "****************************",
        "決着！！！",
        "****************************"
      ]
      if @status[1][:pika] > @status[1][:zeni]
        puts "ゼニガメ瀕死、、ピカチュウの勝利！！"
      elsif @status[1][:zeni] > @status[1][:pika]
        puts "ピカチュウ瀕死、、ゼニガメの勝利！！"
    end
  end
end

battle_start = Pokemon.new
battle_start.battle











































#
