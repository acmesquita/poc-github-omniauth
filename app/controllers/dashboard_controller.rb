class DashboardController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @list = RestClient.get("https://api.github.com/users/#{current_user.login}").body

  end
end
