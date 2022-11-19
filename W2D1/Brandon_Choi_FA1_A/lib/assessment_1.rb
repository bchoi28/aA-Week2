def my_map!(arr, &prc)
    arr.each_with_index do |ele, idx|
        arr[idx] = prc.call(ele) 
    end
    return arr
end

def two?(arr, &prc)
    count = 0
    arr.each do |ele|
        if prc.call(ele) == true
            count += 1
        end
    end
    count == 2
end

def nor_select(arr, prc1, prc2)
   return arr.select {|ele| (!prc1.call(ele) && !prc2.call(ele)) }
end

def array_of_hash_sum(arr)
    sum = 0
    arr.each do |hash|
        hash.each_value do |v|
            sum += v
        end
    end
    sum
end

def slangify(sentence)
    words = sentence.split(" ")
    new_words = []
    words.each do |word|
        new_words << replace(word)
    end
    new_words.join(" ")
end

def replace(word)
    vowels = "aeiouAEIOU"
    new_word = ""
    word.each_char.with_index do |char, idx|
        if vowels.include?(char)
            word[idx] = ""
            return word
        end
    end
    word
end

def char_counter(string, *args)
    count = Hash.new(0)
    args.each {|ele|count[ele]=0}

    string.each_char do |char|
        if args.include?(char)
            count[char] += 1
        elsif args.empty? == true
            count[char] += 1
        end
    end
    count
end

