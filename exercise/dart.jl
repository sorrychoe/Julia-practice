function score(x, y)
    if x^2+y^2<=1
        return 10
    elseif x^2+y^2<=25
        return 5
    elseif x^2+y^2<=100
        return 1
    else
        return 0
    end
end

println(score(1,0))