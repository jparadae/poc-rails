class ArticlesController < ApplicationController
    #generate new article
    def new
        @article = Article.new
        @article.title = 'Article Demo'
    end
    #create new article in model article, the result view how json
    def create
       @article = Article.create(title: params[:article][:title])
       render json:@article
    end

end
