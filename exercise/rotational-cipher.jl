function rotate(rotate::Int, words::Char)
    answer = []
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    for word in words
        x = findfirst(word, "abcdefghijklmnopqrstuvwxyz") + rotate
        if x > 26
            x -= 26
        end
        push!(answer, alphabet[x])
    end
    return join(answer)
end

rotate(1, "z")

