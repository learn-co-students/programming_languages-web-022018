require 'pry'

def reformat_languages(languages)
  # your code here
  new_hash = {}
  languages.each do |style, language|
    # new_hash[language] = {style: []}
    # new_hash[language][:style] << style
    language.each do |name, data|
      if new_hash.key?(name)
        new_hash[name][:style] << style
      else
        new_hash[name] = data
        new_hash[name][:style] = [style]
      end
      # if new_hash[name][:style].kind_of?(Array)
      #   new_hash[name][:style] << style
      # else
      #   new_hash[name][:style] = [style]
      # end
    end
  end
  new_hash
end
