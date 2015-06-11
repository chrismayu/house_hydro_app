class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
   
   before_filter :find_lastest
  
  private
  
  def find_lastest
    @lastest_data = InComing.latest_data
    @all_data = InComing.current
    #@lastest_feed = Watcher.where("feedmode_active = ?", true).first
    #@lastest_waterchange = Watcher.where("waterchange_active= ?", true).first
    #@reef_tank = ReefTank.first
  end
  
  
end
