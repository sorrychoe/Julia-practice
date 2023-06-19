function square_of_sum(n)
    return Integer(((n*(n+1))/2)^2)
end

function sum_of_squares(n)
    return Integer((n*(n+1)*(2n+1))/6)
end

function difference(n)
    sqos = square_of_sum(n)
    sosq = sum_of_squares(n)
    return sqos-sosq
end

difference(100)