
class User
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location
  end

  def self.create_method(dynamic_method_name)
    define_method("find_by_#{dynamic_method_name}") do |att_val|
      self.send(__method__.to_s.split("_")[-1]) == att_val ? att_val : 'Not Found'
    end
  end
end

user = User.new('yugesh', 'Ind')

p user

p user.methods - user.class.superclass.new.methods

p User.create_method('name')

p user.methods - user.class.superclass.new.methods

p user.find_by_name('yugesh')
p user.find_by_name('john')

p User.create_method('location')

p user.methods - user.class.superclass.new.methods

p user.find_by_location('Ind')
