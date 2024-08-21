require 'humanize'

# Basic Usage
puts 1234.humanize            # Output: "one thousand two hundred thirty-four"
puts 42.humanize              # Output: "forty-two"
puts 42.humanize(locale: :fr) # Output: "quarante-deux" (French locale)

# Handling Decimal Numbers
puts 1234.56.humanize         # Output: "one thousand two hundred thirty-four point five six"

# Handling Large Numbers
puts 1_000_000.humanize       # Output: "one million"

# useful in rails, situations like generating invoices, reports, or where precision is less important than readability.
balance = 1234567
balance_in_words = balance.humanize 
puts balance_in_words         # Output: "one million two hundred thirty-four thousand five hundred sixty-seven"

invoice = 1234.56
puts invoice.humanize         # Output: "one thousand two hundred thirty-four point five six"

# in global applications that need to adapt content dynamically based on the user's language.
amount = 1234
puts amount.humanize(locale: :fr) # Output: "mille deux cent trente-quatre"