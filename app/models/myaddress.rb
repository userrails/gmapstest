class Myaddress < ActiveRecord::Base
  # attr_accessible :title, :body
 attr_accessible :country, :city, :latitude, :longitude, :gmaps
   validates :country, :presence => true

 acts_as_gmappable 

def gmaps4rails_address
  "#{self.city}" 
  end
end
