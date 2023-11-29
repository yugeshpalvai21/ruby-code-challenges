def rot13(secret_messages)
    decoded_messages = secret_messages.map do |message|
      message.chars.map do |char|
        if char.ord.between?('A'.ord,'M'.ord) || char.ord.between?('a'.ord, 'm'.ord)
          (char.ord + 13).chr
        elsif char.ord.between?('N'.ord, 'Z'.ord) || char.ord.between?('n'.ord, 'z'.ord)
          (char.ord - 13).chr
        else
          char
        end
      end.join("")
    end
    decoded_messages.each do |message|
      puts message
    end
end

rot13(["Why did the chicken cross the road?", "Gb trg gb gur bgure fvqr!"])