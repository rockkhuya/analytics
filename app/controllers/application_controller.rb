class ApplicationController < ActionController::Base
  include Authentication

  protect_from_forgery with: :exception

  rescue_from FbGraph::Exception, :with => :fb_graph_exception

  # before_action :authenticate_admin!

  def fb_graph_exception(e)
    flash[:error] = {
      :title   => e.class,
      :message => e.message
    }
    current_user.try(:destroy)
    redirect_to root_url
  end
end
