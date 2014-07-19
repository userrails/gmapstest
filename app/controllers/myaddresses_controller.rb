class MyaddressesController < ApplicationController
def new
@address=Myaddress.new
end

def create
@address=Myaddress.new(params[:myaddress])
if @address.save 
redirect_to myaddresses_path
else
render 'new'
end
end

def index
@addresses = Myaddress.all
@json = @addresses.to_gmaps4rails
end

end
