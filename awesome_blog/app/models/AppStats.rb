class AppStats
    attr_reader :quotes, :posts
    def initialize
        @posts = Post.all
        @quotes = Quote.all
    
    def posts_count
        posts.length
    end

    def quotes_count
        quotes.length
    end

    def quotes_word_count
        quotes = quotes.map {|quote| quote[:body].join(" ").length}
        quotes_total = quotes.reduce(:+)
        puts quotes_total
        quotes_total
        # quotes.reduce(0) {|sum, quote| sum + quote.word_count}
    end

    def posts_word_count
        posts = posts.map {|post| post[:body].join(" ").length}
        posts_total = posts.reduce(:+)
        puts quotes_total
        posts_total
        # posts.reduce(0) {|sum, post| sum + post.word_count}
    end
    
    def total_count
        total_all = posts.length + quotes.length
        total_all
        puts total_all
        # posts_count + quotes_count
    end

    def total_word_count
        posts = posts.map {|post| post[:body].join(" ").length}
        posts_total = posts.reduce(:+)
        quotes = quotes.map {|quote| quote[:body].join(" ").length}
        quotes_total = quotes.reduce(:+)
        entire_total = quotes_total + posts_total
        entire_total
        puts entire_total
        # posts_word_count + quotes_word_count
    end
end