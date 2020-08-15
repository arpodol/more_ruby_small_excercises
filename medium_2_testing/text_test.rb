require 'minitest/autorun'

require "minitest/reporters"
Minitest::Reporters.use!

require_relative('text')

class TextTest < Minitest::Test
  def setup
    @file = File.open("sample_text.txt", "r")
    @text = ''
    @file.each_line do |line|
      @text += line
    end
    @text_test = Text.new(@text)
  end

  def test_swap
    output = <<~OUTPUT.chomp
Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
et verius meuris, et pheretre mi.
    OUTPUT
    assert_equal(output, @text_test.swap('a', 'e'))
  end

  def test_word_count
    calculated_count = @text_test.word_count
    true_count = 72
    assert_equal(true_count, calculated_count)
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end