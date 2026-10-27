
function pi()
    return math.pi
end


function fraction()
    return 22/7
end


function viete(terms)

    local numerator = 0.0
    local pi = 1.0

    for i=1, terms do
        numerator = math.sqrt(2.0 + numerator)
        pi = pi * (numerator / 2.0)
    end

    pi = (1.0 / pi) * 2.0
    return pi

end


function wallis(iterations)
    
    local numerator = 2.0
    local denominator = 1.0
    local pi = 1.0

    for i=1, iterations do
        pi = pi * (numerator / denominator)
        if (i%2) == 1 then
            denominator = denominator + 2.0
        else
            numerator = numerator + 2.0
        end
    end

    pi = pi * 2.0
    return pi

end


function machin()

    local pi = (4.0 * math.atan(1.0 / 5.0) - math.atan(1.0 / 239.0)) * 4.0

    return pi

end


function gregoryleibniz(iterations)

    local denominator = 1.0
    local multiplier = 1.0
    local pi = (4.0 / denominator)

    for i=2, iterations do
        denominator = denominator +2.0
        multiplier = multiplier * -1.0
        pi = pi + ( (4.0 / denominator) * multiplier )
    end

    return pi

end


function nilakantha(iterations)
    
    local mul = 1.0 -- multiplier
    local denom = 2.0 -- denominator
    local pi = 3.0

    for i=1, iterations do
        pi = pi + ( (4.0 / (denom * (denom + 1.0) * (denom + 2.0)) ) * mul)
        denom = denom + 2.0
        mul = mul * -1.0
    end

    return pi

end