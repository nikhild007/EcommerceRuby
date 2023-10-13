class HomeController < ApplicationController
    def index
        if user_signed_in?
            @user = current_user
            @articles = Article.all
        end     
    end
end
