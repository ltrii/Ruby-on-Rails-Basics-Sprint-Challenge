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
        @posts.each { |post| wordcounts += WordCounter.word_count(post) }
    end
    def self.quotes_word_count
        wordcounts = 0
        @quotes.each { |quote| wordcounts += WordCounter.word_count(quote) }
        return wordcounts
    end
    def self.total_count
        cnt = @posts.length + @quotes.length
        return cnt
    end
    def self.total_word_count
        postcounts = 0
        @posts.each { |post| postcounts += WordCounter.word_count(post) }
        quotecounts = 0
        @quotes.each { |quote| quotecounts += WordCounter.word_count(quote) }
        nice = postcounts + quotecounts
        return nice
    end
end
