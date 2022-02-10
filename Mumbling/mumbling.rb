class Mumbling
    def mumble_letters(letters)
        num_chars = letters.length
        one_mumble = Array.new
        (0...num_chars).each do |index|
            one_mumble << letters[index].upcase + (letters[index]*index).downcase
        end
        one_mumble.join("-")
    end
end