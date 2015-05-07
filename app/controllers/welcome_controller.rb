class WelcomeController < ApplicationController
  skip_before_filter :require_login, only: :index

  def index
    @posts = Post.includes(:user)

  end
end
