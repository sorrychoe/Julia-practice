function prefix_sum(arr::Vector{T}) where {T<:Number}
    pre = []
    preans = zero(T)
    for i in arr
        preans += i
        push!(pre, preans)
    end
    return pre
end

ans = prefix_sum([1,2,3,4])
println(ans)