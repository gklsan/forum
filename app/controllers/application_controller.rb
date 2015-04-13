class ApplicationController < ActionController::Base
  protect_from_forgery
  after_filter :store_location
  def store_location
    return unless request.get?
    if(request.path != "/users/sign_in" &&
        request.path != "/users/sign_out" &&
        request.path != "/users/sign_up" &&
    !request.xhr?)
      session[:previous_url] = request.fullpath
    end
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || posts_path
  end

  def after_sign_out_path_for(resource)
    session[:previous_url] || posts_path
  end

  def after_sign_up_path_for(resource)
    session[:previous_url] || posts_path
  end
end
