require_relative '../encrypt'
# 1. (describe) describe '#method_name'
# 2. (it) describing the test aka name
# 3. (expect) calling the method and comparing to a result

describe '#encrypt' do
  it 'should return an empty string when given one' do
    expect(encrypt('')).to eq('')
  end

  it 'should return "A" when given "D"' do
    expect(encrypt('D')).to eq('A')
  end

  it 'should return "A1" when given "D1"' do
    expect(encrypt('D1')).to eq('A1')
  end

  it 'should return an encrypted sentence when given a full sentence' do
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end

  it 'should return an encrypted sentence with punctuation when given a full sentence' do
    actual = encrypt("THE QUICK BROWN FOX, JUMPS OVER THE LAZY DOG")
    expected = "QEB NRFZH YOLTK CLU, GRJMP LSBO QEB IXWV ALD"
    expect(actual).to eq(expected)
  end
end
