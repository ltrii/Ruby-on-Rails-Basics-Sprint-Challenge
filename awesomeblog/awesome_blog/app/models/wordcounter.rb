class WordCounter < ApplicationRecord
    def self.word_count(data)
        if data.body.present?
            count = data.body.split.size
            return count
        else
            count = 0
            return count
        end
end