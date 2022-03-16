def hash_converter data
  data.map { |i| i * "=" } * "&" 
end


# def hash_converter data
#   data.map { |k, v| "#{k}=#{v}" }.join("&")
#   # result = ""
#   # data.each { |k,v| result += "#{k}=#{v}&"}
#   # result[0...-1]
# end

RSpec.describe "#hash_converter" do
  it 'will converts hash to url equilant parameter' do
    hash = { name: 'yugesh', location: 'ind' }
    expect(hash_converter(hash)).to eq("name=yugesh&location=ind")
  end
end