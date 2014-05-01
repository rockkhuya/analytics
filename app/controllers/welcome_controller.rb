class WelcomeController < ApplicationController
  def index
    authenticated?
  end
end
