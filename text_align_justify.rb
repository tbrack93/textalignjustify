require 'rubocop'

def justify(text, width)
  words = text.split(' ')
  paragraph = line_split(words, width)
  paragraph.each do |line|
    return final_line(line, paragraph) if line == paragraph.last
    add_spaces(line, width)
  end
end

# splitting text into lines based on max width, as an array of arrays
def line_split(words, width)
  paragraph = []
  until words.empty?
    line = []
    until (line.join.length + line.count - 1) >= width || words.empty?
      word = words.shift
      line << word
    end
    # return final word to overall words list if line is over width max
    words.insert(0, line.pop) if (line.join.length + line.count - 1) > width
    paragraph << line
  end
  return paragraph
end

# final line has 1 space between lines, not fitted to width & no line break
def final_line(line, paragraph)
  index = 1
  (line.count - 1).times do
    line.insert(index, ' ')
    index += 2
  end
  return paragraph.join
end

# iterate over each line to add correct spacing based on width
def add_spaces(line, width)
  spaces = width - line.join.length
  unless spaces <= 0 || line.count == 1
    index = 1
    until spaces.zero?
      line[index] =~ /\s/ ? line[index] += ' ' : line.insert(index, ' ')
      index >= line.count - 2 ? index = 1 : index += 2
      spaces -= 1
    end
  end
  line << "\n"
end
