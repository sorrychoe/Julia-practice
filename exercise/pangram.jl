function ispangram(input)
    word_set = Set("abcdefghijklmnopqrstuvwxyz")
    mat = match(r"^[a-z]", input)
    println(mat.match)
    data = Set(lowercase(mat.match))
    if word_set == data
        return true
    else
        return false
    end
end

ispangram("the quick brown fox jumps over the lazy dog")