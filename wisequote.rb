class WiseQuote
  attr_accessor :quote, :author

  def initialize(quote, author)
    @quote = quote
    @author = author
  end

  def to_s
    "\"#{@quote}\" - #{@author}"
  end
end
