dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(message, dictionary)
    hash = Hash.new(0)
    message.downcase!
    messageArray = message.split(/[^[[:word:]]]+/)
    dictionary.each do |checkWord|
        messageArray.each do |word|
            if word.include?(checkWord)
                hash[checkWord] += 1
            end
        end
    end
    puts hash
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)