players = File.read("players_list.txt").split("\n")

last_names = players.map { |player| player.split(" ").last }

puts players.inspect
puts last_names.inspect

bars = last_names.map.with_index do |last, index|
    last_names.select { |name| name == last }.count > 1 ? "#{players[index][0]}. #{last}": "#{last}"
end

puts bars.inspect

File.open("player_bar_names.txt", "w") { |file| file.write bars.join("\n") }
