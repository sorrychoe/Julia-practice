function to_rna(dna)
    if contains(dna, r"[BDEFHIJKLMNOPQRSUVWXYZ]")
        throw(ErrorException("error"))
    end
    return replace(dna, "C"=>"G", "G"=>"C", "T"=>"A", "A"=>"U")
end


to_rna("U")

