def nested_hash_converter hash
  hash.each_with_object({}) do |(k, v), h|
    if v.is_a? Hash
      nested_hash_converter(v).map do |h_k, h_v|
        h["#{k}_#{h_k}".to_sym] = h_v
      end
    else 
      h[k] = v
    end
   end
end

RSpec.describe '#nested_hash_converter' do
  it 'wii converts nested hash keys to single hash' do
    base_hash = { title: 'yugesh', location: { base_details: { city: 'hyd' }}}
    result_hash = { title: 'yugesh', location_base_details_city: 'hyd' }
    expect(nested_hash_converter(base_hash)).to eq result_hash
  end
end