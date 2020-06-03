# Dollar => $
# Pound => £
# Euro => €

def currency_converter(amount, currency)
    case currency
    when 'dollar' then "$%.2f" % amount
    when 'pound' then "£%.0f" % amount
    when 'euro' then ("€%.2f" % amount).gsub('.', ',')
    else "#{amount}"
    end
end

RSpec.describe 'Currency Converter' do
    it 'formats currency based on given country' do
        expect(currency_converter(5000, 'dollar')).to eq('$5000.00')
        expect(currency_converter(5000, 'pound')).to eq('£5000')
        expect(currency_converter(5000, 'euro')).to eq('€5000,00')
    end
end