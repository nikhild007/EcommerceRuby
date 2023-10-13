class ArticlesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
    end

    def new
        @article = current_user.articles.build
    end

    def show
        @article = Article.find(params[:id])
    end

    def create
        @article = current_user.articles.build(article_params)
        if @article.save
            redirect_to controller: 'home', action: 'index'
        else
            render 'new'
        end
    end

    private
        def article_params
            params.require(:article).permit(:title,:body)
        end
end
