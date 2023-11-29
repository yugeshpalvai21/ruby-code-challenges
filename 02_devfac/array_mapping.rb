
def filter_data(headers, *data)
  headers.zip(*data)
end

RSpec.describe '#filter_data' do
  it 'will map one array object to multiple array objects' do 
    headers = ['1B', '2B', '3B']
    astros = ['Gurriel', 'Altuve', 'Bregman']
    rangers = ['Fielder', 'Andrus', 'Odor']
    
    expect(filter_data(headers, astros, rangers)).to eq([
                                                          ['1B', 'Gurriel', 'Fielder'], 
                                                          ['2B','Altuve','Andrus'], 
                                                          ['3B','Bregman', 'Odor']
                                                        ])
  end
end