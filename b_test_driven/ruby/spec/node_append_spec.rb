require_relative '../node.rb'
describe 'Node append' do
  context 'to a one element list' do
    let(:list) { Node.from_string('a') }
    it 'appends element to the end' do
      expect(list.append('b').to_s).to eq 'a, b'
    end
  end
  context 'to a two element list' do
    let(:list) { Node.from_string('a, b') }
    it 'appends element to the end' do
      expect(list.append('c').to_s).to eq 'a, b, c'
    end
  end
  context 'to a list with more elements' do
    let(:list) { Node.from_string('a, b, c, d, e, f, g, h') }
    it 'appends element to the end' do
      expect(list.append('i').to_s).to eq 'a, b, c, d, e, f, g, h, i'
    end
  end

  #  context 'from a two element list' do
  #    # ... implement some more examples
  #  end
  #  context 'from a three element list' do
  #    let(:list) { Node.from_string('a,b,c') }
  #    it 'deletes first element' do
  #      expect(list.delete('a').to_s).to eq('b, c')
  #    end
  #    it 'deletes element in the middle'
  #    it 'deletes last element'
  #  end

end
