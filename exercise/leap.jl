function is_leap_year(year)
    if year%4!=0
        return false
    elseif (year%100==0) && (year%400!=0)
        return false
    else
        return true
    end
end