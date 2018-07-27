require 'rspec'
require_relative 'text_align_justify'

lorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."

RSpec.describe "passed 9 character sentence with max width of 10" do
  it "should return one line string with one space between words" do
    result = justify("Hello now", 10)
    expect(result).to eq("Hello now")
    expect(result[-1..-2]).to_not eq("\n")
  end
end

RSpec.describe "passed long block of text with max width of 15" do
  it "should return string with text justified to provided width" do
    result = justify(lorem, 15)
    expect(result).to eq("Lorem     ipsum\ndolor sit amet,\nconsectetur\nadipiscing\nelit,   sed  do\neiusmod  tempor\nincididunt   ut\nlabore       et\ndolore    magna\naliqua. Ut enim\nad        minim\nveniam,    quis\nnostrud\nexercitation\nullamco laboris\nnisi ut aliquip\nex  ea  commodo\nconsequat.")
    expect(result[-1..-2]).to_not eq("\n")
  end
end

RSpec.describe "passed long block of text with max width of 20" do
  it "should return string with text justified to provided width" do
    result = justify(lorem, 20)
    expect(result).to eq("Lorem   ipsum  dolor\nsit            amet,\nconsectetur\nadipiscing elit, sed\ndo   eiusmod  tempor\nincididunt ut labore\net    dolore   magna\naliqua.  Ut  enim ad\nminim  veniam,  quis\nnostrud exercitation\nullamco laboris nisi\nut   aliquip  ex  ea\ncommodo consequat.")
    expect(result[-1..-2]).to_not eq("\n")
  end
end

RSpec.describe "passed long block of text with max width of 25" do
  it "should return string with text justified to provided width" do
    result = justify(lorem, 25)
    expect(result).to eq("Lorem   ipsum  dolor  sit\namet,         consectetur\nadipiscing  elit,  sed do\neiusmod tempor incididunt\nut labore et dolore magna\naliqua.  Ut enim ad minim\nveniam,    quis   nostrud\nexercitation      ullamco\nlaboris  nisi  ut aliquip\nex ea commodo consequat.")
    expect(result[-1..-2]).to_not eq("\n")
  end
end

RSpec.describe "passed long block of text with max width of 30" do
  it "should return string with text justified to provided width" do
    result = justify(lorem, 30)
    expect(result).to eq("Lorem  ipsum  dolor  sit amet,\nconsectetur  adipiscing  elit,\nsed    do    eiusmod    tempor\nincididunt ut labore et dolore\nmagna aliqua. Ut enim ad minim\nveniam,      quis      nostrud\nexercitation  ullamco  laboris\nnisi  ut aliquip ex ea commodo\nconsequat.")
    expect(result[-1..-2]).to_not eq("\n")
  end
end


