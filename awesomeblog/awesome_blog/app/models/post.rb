require('word_counter')
class Post < ApplicationRecord
    include WordCounter
end
