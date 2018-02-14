def reformat_languages(languages)
  new_hash = Hash.new
  languages.each do |ooorf, languagesandtypes|
    languagesandtypes.each do |language, type|
        if new_hash.include?(language)
          new_hash[language][:style].push(ooorf)
        elsif
          new_hash[language] = type
          type[:style] = [ooorf]
        end
    end
  end 
  new_hash
end