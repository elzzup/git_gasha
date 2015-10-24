class GashaController < ApplicationController
  def index
    @user = User.login_user(session[:github_token])
    if @user.nil?
      redirect_to '/'
    end
    @card = Gasha.generate
  end
end
