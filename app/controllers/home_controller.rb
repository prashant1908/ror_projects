class HomeController < ApplicationController
  def index
  
end

def profile
	@user = current_user
end

def photo
	@user = current_user.user_name
end

end
