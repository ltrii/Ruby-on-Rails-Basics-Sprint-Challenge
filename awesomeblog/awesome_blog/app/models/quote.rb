require('word_counter')
class Quote < ApplicationRecord
    include WordCounter
end
