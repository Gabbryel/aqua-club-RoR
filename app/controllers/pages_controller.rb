class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @articles = Article.all.order('id DESC').first(3)
  end

  def dashboard
    
  end
end
