def reformat_languages(languages)
    # your code here
    new_hash = Hash.new(0)
    languages.each do |k, v|
        v.each do |k2, v2|
            if new_hash.has_key?(k2)
                new_hash[k2][:style].push(k)
                else
                new_hash[k2] = v2
                new_hash[k2][:style] = []
                new_hash[k2][:style].push(k)
            end
        end
    end
    new_hash
end

