require_relative "wisequote"

class WiseQuoteApp
  def initialize
    @quotes = []
  end

  def run
    loop do
      puts "\n--- WiseQuote CLI ---"
      puts "1. View quotes"
      puts "2. Add a quote"
      puts "3. Exit"
      print "Choose an option: "
      input = gets.chomp.to_i

      case input
      when 1
        list_quotes
      when 2
        add_quote
      when 3
        puts "Goodbye!"
        break
      else
        puts "Invalid option."
      end
    end
  end

  private

  def list_quotes
    if @quotes.empty?
      puts "No quotes saved yet."
    else
      @quotes.each { |q| puts q }
    end
  end

  def add_quote
    print "Enter the quote: "
    body = gets.chomp
    print "Enter the author: "
    author = gets.chomp
    @quotes << WiseQuote.new(body, author)
    puts "💡 Quote saved!"
  end
end
