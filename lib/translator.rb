require 'pry'
require 'yaml'


def load_library(file_path)
  library = YAML.load_file(file_path)
  
  result = {}
  
  library.each do |meaning, both_emoticons|
  
   result[meaning] = {}
   result[meaning][:english] = both_emoticons[0]
   result[meaning][:japanese] = both_emoticons[1]
  
  end
  result
end

def get_english_meaning(file_path = './lib/emoticons.yml', japanese_emoticon)
     library = load_library(file_path)

    library.each do |names, both_emoticons|
      if both_emoticons[:japanese] == japanese_emoticon
         return names
         end  
      end
    return  "Sorry, that emoticon was not found"
  end


# def get_english_meaning_check(library, japanese_emoticon )

#     library.each do |names, both_emoticons|
#       if both_emoticons[:japanese] == japanese_emoticon
#          return names
#          end  
#       end
#     return  "Sorry, that emoticon was not found"
# end

def get_japanese_emoticon(file_path = './lib/emoticons.yml', english_emoticon)
  library = load_library(file_path)

  library.each do |names, both_emoticons|

   if both_emoticons[:english] == english_emoticon
      return both_emoticons[:japanese] 
      end  
   end
 return  "Sorry, that emoticon was not found"
end