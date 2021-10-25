class ArticlesController < ApplicationController
    #generate new article
    def new
        @article = Article.new
        @article.title = 'Article Demo'
    end
    #create new article in model article, the result view how json
    def create
       @article = Article.create(title: params[:article][:title], content: params[:article][:content])
       #send json to view
       render json:@article
    end

    #Function for show all articles
    def show
       @article = Article.find(params[:id])
       render json:@article
    end    

    #Function for edit one article
    def edit
        @article = Article.find(params[:id])
        #Persisted search all in database
        puts "\n\n #{@article.persisted?} \n\n"
        @article.update(title: params[:article], content: params[:content])

        #render json:@article
        redirect_to @article
    end    


end
