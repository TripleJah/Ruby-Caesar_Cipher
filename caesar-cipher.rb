#Caesar Cipher that takes an input string and shift value, returns encrypted string


def caesar_cipher(input_string, shift_value)
    
    encrypted_string = ''
    case_ascii = 0
    input_string.each_char do |char|
        #upcase or downcase ascii
        if char.ord < 91
            case_ascii = 65
        elsif char.ord > 91
            case_ascii = 97
        else
        end
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
            ascii_shift = (((char.ord - case_ascii) + shift_value) % 26) + case_ascii
            encrypted_string += ascii_shift.chr
        else
            encrypted_string += char
        end
    end
    encrypted_string
end

puts caesar_cipher("WHAT a string!", 5)
