require "minitest/autorun"
require_relative "../wisequote"

class WiseQuoteTest < Minitest::Test
  def test_initialize_sets_quote_and_author
    quote = WiseQuote.new("Knowledge is power", "Francis Bacon")
    assert_equal "Knowledge is power", quote.quote
    assert_equal "Francis Bacon", quote.author
  end

  def test_to_s_formats_output
    quote = WiseQuote.new("Simplicity is the ultimate sophistication", "Leonardo da Vinci")
    expected_output = "\"Simplicity is the ultimate sophistication\" - Leonardo da Vinci"
    assert_equal expected_output, quote.to_s
  end
end
