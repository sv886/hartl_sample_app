class User
  #creates attribute accessors corresponding to a user’s name and email address.
  #This creates “getter” and “setter” methods that allow us to retrieve (get)
  #and assign (set) @name and @email instance variables
  attr_accessor :name, :email #principal importance of instance variables is that they are automatically available in the views, but in general they are used for variables that need to be available throughout a Ruby class. Instance variables always begin with an @ sign, and are nil when undefined.

  def initialize(attributes = {}) #initialize is special in Ruby: it’s the method called when we execute User.new
    @name  = attributes[:name] # @name instance variable (as indicated with the @ sign), automatically available in the formatted_email method.
    @email = attributes[:email] # @email instance variable (as indicated with the @ sign), automatically available in the formatted_email method.
  end

  def formatted_email
    "#{@name} <#{@email}>"
  end
end
