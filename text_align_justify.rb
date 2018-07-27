require 'rubocop'

def justify(text, width)
  # splitting text into lines based on max width, as an array of arrays
  words = text.split(" ")
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

  # iterate over each line to add correct spacing
  paragraph.each do |line|
    # final line has 1 space between lines, not fitted to width & no line break
    if line == paragraph.last
      index = 1
      (line.count - 1).times do
        line.insert(index, " ")
        index += 2
      end
      return paragraph.join
    end

    spaces = width - line.join.length

    unless spaces <= 0 || line.count == 1
      index = 1
      until spaces.zero?
        if line[index] =~ (/\s/)
          line[index] += " "
        else
          line.insert(index, " ")
        end
        index >= line.count - 2 ? index = 1 : index += 2
        spaces -= 1
      end
    end
      line << "\n"
  end
end

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."


puts justify(lorem, 30)
