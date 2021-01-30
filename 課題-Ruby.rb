
# method get points&comments
def point_comment
  puts "1から5で評価を入力してください"
  point = gets.to_i
  if point <= 0 || point > 5
    puts "1から5で入力してください"
  else
    puts "コメントを入力してください"
    comment = gets
    post = "ポイント：#{point}　コメント：#{comment}"
    File.open("data.txt", "a") do |file|
      file.puts(post)
    end
  end
end

# method get result
def get_result
  puts "これまでの結果"
  File.open("data.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end


while true
  puts "1から3の中から行う処理を選択してください"
  puts "1:評価ポイントとコメントを入力する"
  puts "2:今までの結果を確認する"
  puts "3:やめる"
  num = gets.to_i
  
  case num
  when 1
    point_comment  # method
  when 2
    get_result  # method
  when 3
    puts "終了します"
    break
  else
    puts "1から3を入力してください"
  end
end

