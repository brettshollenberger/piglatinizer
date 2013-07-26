require_relative '../lib/piglatinizer'

describe Piglatinizer do
  it "should translate 'hello' in to 'ellohay'" do
    piglatinizer = Piglatinizer.new("hello")
    expect(piglatinizer.latinize).to eql("ellohay")
  end

  it "should translate 'apples' in to 'applesay'" do
    piglatinizer = Piglatinizer.new("apples")
    expect(piglatinizer.latinize).to eql("applesay")
  end

  it "should capitalize the piglatin when the english is capitalized" do
    piglatinizer = Piglatinizer.new("Apples")
    expect(piglatinizer.latinize).to eql("Applesay")
    piglatinizer = Piglatinizer.new("World")
    expect(piglatinizer.latinize).to eql("Orldway")
  end

  it "should translate all of the words in a phrase" do
    piglatinizer = Piglatinizer.new("hello world")
    expect(piglatinizer.latinize).to eql("ellohay orldway")
  end

  it "should translate all of the words in a sentence and retains its punctuation" do
    piglatinizer = Piglatinizer.new("eat... apples?!")
    expect(piglatinizer.latinize).to eql("eatay... applesay?!")
  end

end
