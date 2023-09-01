def caesar_cipher (string, shift)
    return "" if string.nil?

    for i in 0...string.length do
        p ("a".."z")===string[i]
        if ("a".."z")===string[i] || ("A".."Z")===string[i]

            code=string[i].ord
            code+=shift

            if code>122 && ("a".."z")===string[i]
                enc = code-122
                code = 96+enc
            end

            if code>90 && ("A".."Z")===string[i]
                enc = code-90
                code = 64+enc
            end
            string[i]=code.chr

        end
    end
string
end

p caesar_cipher("", 5)
puts caesar_cipher("What a string!", 5)