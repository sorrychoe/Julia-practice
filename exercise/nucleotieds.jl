function count_nucleotides(strand)
    dict = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)
    for word in strand
        if word in keys(dict)
            dict[word]+=1
        else 
            throw(DomainError(dict, "no nucleotides"))
        end
    end
    return dict
end

count_nucleotides("") 