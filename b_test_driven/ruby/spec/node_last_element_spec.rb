require_relative '../node.rb'
describe 'Node gets last element' do
  context 'from a one element list' do
    it 'returns the only element' do
      list = Node.from_string('a')
      expect(list.last.to_s).to eq('a')
    end
    it 'returns the only element' do
      list = Node.from_string('X')
      expect(list.last.to_s).to eq('X')
    end
  end
  context 'from a two element list' do
    it 'returns the only element' do
      list = Node.from_string('a, b')
      expect(list.last.to_s).to eq('b')
    end
    it 'returns the only element' do
      list = Node.from_string('a, X')
      expect(list.last.to_s).to eq('X')
    end
  end
  context 'from a many element list' do
    it 'returns the only element' do
      list = Node.from_string('a, b, c, d, e, f, g, h')
      expect(list.last.to_s).to eq('h')
    end
    it 'returns the only element' do
      list = Node.from_string('a, b, c, d, e, f, g, h, X')
      expect(list.last.to_s).to eq('X')
    end
  end
end
