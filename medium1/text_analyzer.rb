class TextAnalyzer
  def process
    yield(File.read('sample.txt'))
    # your implementation
  end
end

analyzer = TextAnalyzer.new
analyzer.process {|text| puts "#{text.split(/\n\n+/).length} paragraphs" } # your implementation
analyzer.process {|text| puts "#{text.lines.count} lines"  } # your implementation
analyzer.process { |text| puts "#{text.split(' ').length} words" } # your implementation
