RSpec.describe '#nested_hash_converter' do
  it 'wii converts nested hash keys to single hash' do
    base_hash = { title: 'yugesh', location: { base_details: { city: 'hyd' }}}
    result_hash = { title: 'yugesh', location_base_details_city: 'hyd' }
    expect(nested_hash_converter(base_hash)).to eq result_hash
  end
end