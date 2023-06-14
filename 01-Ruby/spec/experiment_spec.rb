require_relative '../experiment'

describe 'experiment' do
  it "1. should remove leading and trailing whitespace around a string" do
    actual = remove_surrounding_whitespaces('   yo what up   ')
    expected = 'yo what up'
    expect(actual).to eq(expected)
  end

  it "2a. should return true if the string contains the word" do
    actual = contains?('yo what up', 'yo')
    expected = true
    expect(actual).to eq(expected)
  end

  it "2b. should return false if the string does not contain the word" do
    actual = contains?('yo what up', 'Steve')
    expected = false
    expect(actual).to eq(expected)
  end

  it "3. should return the string with the old letters replaced by new letters" do
    actual = replace('I like to eat apples and bananas', 'a', 'i')
    expected = 'I like to eit ipples ind bininis'
    expect(actual).to eq(expected)
  end

  it "4. should return the quotient of a dividend and divisor as a floating point number" do
    actual = float_divide(5, 2)
    expected = 2.5
    expect(actual).to eq(expected)
  end

  it "5a. should return true if the integer is divisible by 2" do
    actual = divisible_by_two?(4)
    expected = true
    expect(actual).to eq(expected)
  end

  it "5b. should return false if the integer is not divisible by 2" do
    actual = divisible_by_two?(5)
    expected = false
    expect(actual).to eq(expected)
  end

  it "6a. should return a subset of array with elements from the array" do
    actual = random_subset(('a'..'z').to_a, 5)
    expected = ('a'..'z').to_a
    expect(actual - expected ).to be_empty
  end

  it "6b. should return a subset of array with size equal to sample_size" do
    actual = random_subset(('a'..'z').to_a, 5).count
    expected = 5
    expect(actual).to eq(expected)
  end

  it "7. should return a randomized copy of the array" do
    actual = randomize(('a'..'z').to_a)
    expected = ('a'..'z').to_a.shuffle
    expect(actual).not_to eq(expected)
  end

  it "8a. should return a shuffled alphabet in alphabetical order" do
    array = ("a".."z").to_a.shuffle
    response = ascending_order(array)
    expect(response).to eq array.sort
  end

  it "8b. should return a shuffled numerical array in numerical order" do
    array = (1..10).to_a.shuffle
    response = ascending_order(array)
    expect(response).to eq array.sort
  end
end
