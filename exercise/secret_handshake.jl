sign_list = ["jump","close your eyes","double blink","wink"]

function secret_handshake(num::Int)
    binary = convert_bit(num)
    sign = []
    for k in 2:5
        if binary[k] == '1'
            push!(sign,sign_list[k-1])
            reverse!(sign)
        end
    end
    if binary[1] == '1'
        reverse!(sign)
    end
    return sign
end

function convert_bit(num::Int)
    return bitstring(Int8(num))[4:8]
end

secret_handshake(15)