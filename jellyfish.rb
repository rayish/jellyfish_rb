yourScore = 0
comScore = 0
jellyfish = ["グー","チョキ","パー"]
for i in 0...5
  judg = 0
  while judg <= 0
    puts "#{i}回戦目 (グー:1 チョキ:2 パー:3を入力)"
    manplayer = gets.to_i
    while (manplayer <= 0) || (manplayer > 3)
      puts "1～3までの数字を入力してください。"
      manplayer = gets.to_i
    end
    p manplayer
    puts "You:" + jellyfish[manplayer - 1]
    random = rand(0..2) + 1
    complayer = random
    puts "COM:" + jellyfish[complayer - 1]
    judg = (manplayer - complayer + 3) % 3
    if judg == 1
      puts "Com 勝ち"
      yourScore += 1
    elsif judg == 2
      puts "You 勝ち"
      comScore += 1
    else
      print "あいこなので再戦\n"
    end
    puts " You:" + yourScore + "勝 Com:" + comScore + "勝"
  end
end
puts "-------------------------------------"
if yourScore > comScore
  puts "人間の勝ち "
else
  puts "COMの勝ち "
end
