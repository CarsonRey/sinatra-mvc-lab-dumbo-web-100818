require "pry"
class PigLatinizer


 def piglatinize(string)
   if string.split(" ").length >= 2
     string = string.split(" ")
     helper(string)
   else
     string = string.split(" ")
     helper(string)
   end
 end
end

def helper(string)
  vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
  sentence = string.collect do |word|
    if vowels.include?(word[0])
      "#{word}way"
    else
      word = word.split("")
      consonants = []
      word.each do |letter|
         if !vowels.include?(letter)
           consonants << letter
         else
           break
         end
      end
      "#{word.join[consonants.length..-1] + consonants.join}ay"
    end
  end
  sentence.join(" ")
end

  #
  # @@all = []
  #
  #
  # def self.all
  #   @@all
  # end
  #
  # def upper_vowels
  #     x = "aeoui".upcase.split("")
  # end
  #
  # def vowels
  #   x = "aeoui".split("")
  # end
  #
  #
  # def upper_consonants
  #     x = "bcdfghjklmnpqrstvwxyz".upcase.split("")
  # end
  #
  # def consonants
  #     x = "bcdfghjklmnpqrstvwxyz".split("")
  # end
  #
  # def piglatinize(string)
  #   string = string.split(" ")
  #   string = string.collect do |word|
  #     if vowels.include?(word[0]) || upper_vowels.include?(word[0])
  #       "#{word}way"
  #     elsif (consonants.include?(word[0]) && consonants.include?(word[1])) || upper_consonants.include?(word[0]) && upper_consonants.include?(word[1])
  #       "#{word[2..-1]}"+"#{word[0..1]}ay"
  #     elsif consonants.include?(word[0]) || upper_consonants.include?(word[0])
  #       "#{word[1..-1]}"+"#{word[0]}ay"
  #     end
  #   end
  #   string.join(" ")
  # end
  #
