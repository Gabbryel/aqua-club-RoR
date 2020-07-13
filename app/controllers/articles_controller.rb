class ArticlesController < ApplicationController
    skip_before_action :authenticate_user!, only: %i[index]
    before_action :set_article, only: %i[ edit update destroy ]

    def new
        @article = Article.new
    end

    def create
        @article = Article.create(article_params)
        if @article.save
            redirect_to articles_path
        else
            render :new
        end
    end

    def index
        @article = Article.new
        @articles = Article.all.order('id DESC')
    end

    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        if @article.update(article_params)
            redirect_to articles_path
        else
            render :edit
        end
    end

    def destroy
        @article.destroy
        redirect_to root_path
    end

    private

    def article_params
        params.require(:article).permit(:body, :title, :final)
    end

    def set_article 
        @article = Article.find(params[:id])
    end
    
end
