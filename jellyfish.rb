yourScore = 0
comScore = 0
jellyfish = ["グー","チョキ","パー"]
for i in 0...5
  judg = 0
  while judg <= 0
    puts "#{i + 1}回戦目 (グー:1 チョキ:2 パー:3を入力)"
    manplayer = gets.to_i
    while (manplayer <= 0) || (manplayer > 3)
      puts "1～3までの数字を入力してください。"
      manplayer = gets.to_i
    end
    puts "You:" + jellyfish[manplayer - 1]
    if i <= 3 && yourScore == 2
      puts "インチキモード発動"
      complayer = (manplayer - 1 + 3) % 3;
    else
      random = rand(0..2) + 1
      complayer = random
    end
    puts "COM:" + jellyfish[complayer - 1]
    judg = (manplayer - complayer + 3) % 3
    if judg == 1
      print "Com 勝ち"
      comScore += 1
    elsif judg == 2
      print "You 勝ち"
      yourScore += 1
    else
      print "あいこなので再戦"
    end
    print " You:" , yourScore , "勝 Com:" , comScore , "勝\n\n"
  end
end
puts "-------------------------------------"
if yourScore > comScore
  puts "人間の勝ち "
else
  puts "COMの勝ち "
end