class PagesController < ApplicationController

  def home
    @user = current_user
  end

  def about
  end

  def help
  end

  def contact
  end

end
