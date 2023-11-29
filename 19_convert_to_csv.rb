names = File.open("sample_text.txt")
            .read.split("\n")
            .map { |name| name.split(" ").reverse.join(",") }
            .join("\n")

puts names.inspect
