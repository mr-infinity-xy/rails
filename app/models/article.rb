class Article < ActiveRecord::Base
    validates :title, presence: true, length: { minimum: 10 }
  attr_accessor :fact_no

  def factorial
    sum = 1
    (1..fact_no).each {|i| sum*= i }  
     sum
  end
  
  def factorial_parameter(fact_no)
    sum = 1
    (1..fact_no).each {|i| sum*= i }  
     sum
  end
  
 # def to_param  # used to change the default id which is used for routing. used along with param in routes.rb to change param pased from id=>'valid id' to tile=>'valid title'. Params used to change LHS while to_param method change RHS
    # title      # now title would ne used for routing.
   #end
end
