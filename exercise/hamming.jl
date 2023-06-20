function distance(a, b)
    hamming = 0
    if sizeof(a)!=sizeof(b)
        throw(ArgumentError("size of a & b is different"))
    end
    for i in 1:sizeof(a)
        if a[i] != b[i]
            hamming+=1
        end
    end
    return hamming
end