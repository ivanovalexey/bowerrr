class ApplicationController < ActionController::Base
  protect_from_forgery

  def layout
    render text: '', layout: 'application'
  end

  def ng_renderer
    render file: "angular/#{params[:path]}", layout: false
  end

end
