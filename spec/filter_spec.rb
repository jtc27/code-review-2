require './lib/filter'

describe 'Filter' do
  
  it 'takes sound wave and returns the same' do
    # [60,40,45,60,1000] remains the same i/o
    expect(filter([60,40,45,60,1000], 40, 1000)).to eq([60,40,45,60,1000])
  end

  it 'uses an upper limit on the sound' do
    expect(filter([60,40,45,60,5600], 40, 3000)).to eq([60,40,45,60,3000])
  end

  it 'uses an upper limit on the sound using default values' do
    expect(filter([60,40,45,60,5600])).to eq([60,40,45,60,1000])
  end

  it 'uses an lower limit on the sound' do
    expect(filter([60,-1000,45,60,3000], 40, 3000)).to eq([60,40,45,60,3000])
  end


  #it 'is an array' do
   # expect(filter([60,-1000,45,60,3000], 40, 3000)).to eq([60,40,45,60,3000])
  #end

  it 'raises error if there is a non-integer in the array' do
    expect{filter(['string',-1000,45,60,3000], 40, 3000)}.to raise_error 'Sound waves are not parsed correctly'
  end

  
end