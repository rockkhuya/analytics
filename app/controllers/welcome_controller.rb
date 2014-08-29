class WelcomeController < ApplicationController
  def index
    @me = FbGraph::User.me(current_user.access_token).fetch if current_user
    @page = FbGraph::Page.new(112562602433)
  end

   def analytics
    return :back unless current_user

    @me = FbGraph::User.me(current_user.access_token).fetch if current_user
    @page = FbGraph::Page.new(112562602433)
    return :back unless @me.like?(@page)

    return if @result = Result.find_by(identifier: current_user.identifier)

    @result = Result.new(identifier: current_user.identifier).prediction
    p @me.inspect
  end
end
