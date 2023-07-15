function rotate(rotate::Int, word::Char)
    if lowercase(word) == word
        alphabet = "abcdefghijklmnopqrstuvwxyz"
    else
        alphabet = "ABCDEFGHIJKLMNOPQUSTUVWZYZ"
    end
    x = findfirst(word, alphabet) + rotate
    if x > 26
        x -= 26
    end
    return only(alphabet[x])
end

function rotate(rotate::Int, words::String)
    answer = ""
    for word in words
        if lowercase(word) == word
            alphabet = "abcdefghijklmnopqrstuvwxyz"
        else
            alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        end
        if word in " ,.!?~'1234567890"
            answer= answer*word
        else
            x = findfirst(word, alphabet) + rotate
            if x > 26
                x -= 26
            end
            answer = answer*alphabet[x]
        end
    end
    return answer
end


rotate(5,"I'm your father!")