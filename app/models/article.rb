class Article < ActiveRecord::Base
 validates :title,:text, presence: true,
                    length: { minimum: 5 }

  def to_param  # used to change the default id which is used for routing. used along with param in routes.rb to change param pased from id=>'valid id' to tile=>'valid title'. Params used to change LHS while to_param method change RHS
     title      # now title would ne used for routing.
   end
end
