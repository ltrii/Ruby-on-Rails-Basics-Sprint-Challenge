class AppStats < ApplicationRecord
    attr_reader :posts, :quotes

    def initialize(posts, quotes)
        @posts = Post.all
        @quotes = Quote.all
    end
    def self.posts_count
        @posts.length
    end
    def self.quotes_count
        @quotes.length
    end
    def self.posts_word_count
        wordcounts = 0
        @posts.each { |post| wordcounts += 
                            final = post.body.split(" ")
                            wordcounts += final.length }
        wordcounts
    end
    def self.quotes_word_count
        wordcounts = 0
        @quotes.each { |quote| wordcounts += 
                            final = quote.body.split(" ")
                            wordcounts += final.length }
        wordcounts
    end
    def self.total_count
        self.quotes_count() + self.posts_count()
    end
    def self.total_word_count
        self.posts_word_count() + self.quotes_word_count()
    end
end
