

def caesar_cipher(string, num)
    # I kind of wanted to define these lists outside the function, but apparently that's not how scope works
    letters_lower = ("a".."z").to_a
    letters_upper = ("A".."Z").to_a
    punctuation = [" ", ".", ",", ";", ":", "?", "!", "-"]
    def find_index(list, letter, num)  # Defining a subfunction here so I don't have to repeat this block for the upper and lowercase lists
        idx = list.index(letter) + num
        if idx > 25
            idx -= 26
        end
        idx
    end
    arr = string.split("")
    new_arr = []
    for letter in arr
        if letters_lower.include?(letter)
            new_arr.push(letters_lower[find_index(letters_lower, letter, num)])
        elsif letters_upper.include?(letter)
            new_arr.push(letters_upper[find_index(letters_upper, letter, num)])
        elsif punctuation.include?(letter)
            new_arr.push(letter)
        end
    end
    new_string = new_arr.join
    puts new_string
    return new_string
end

caesar_cipher("What a string!", 5)