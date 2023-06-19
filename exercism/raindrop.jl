function raindrops(number)
    ans1=""
    ans2=""
    ans3=""
    if number%3==0
        ans1="Pling"
    end
    if number%5==0
        ans2="Plang"
    end
    if number%7==0
        ans3="Plong"
    end
    if string(ans1, ans2, ans3) == ""
        return(string(number))
    end
    return string(ans1, ans2, ans3)
end

raindrops(35)