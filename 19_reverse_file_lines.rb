names = File.read("sample_text.txt")
            .split("\n")
            .map { |name| name.split(" ").reverse.join(" ") }

p names
