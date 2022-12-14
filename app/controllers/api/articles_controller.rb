  module Api
  class ArticlesController < ApplicationController

    before_action :set_article, only: %i[show update destroy]

    def index
      @articles = Article.all
      # render json: {articles: articles}
    end


    def show; end


    def new
      @article = Article.new
    end

    def create
      @article = Article.new(article_params)

      if @article.save
         @article
      else
        render json: @article.errors, status: :unprocessable_entity
      end
    end

    # def edit
    #   @article = Article.find(params[:id])
    # end

    def update
      if @article.update(article_params)
        redirect_to @article
      else
        render json: @article.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @article.destroy

      redirect_to root_path, status: :see_other
    end


    def set_article
      @article = Article.find(params[:id])
    end

    private
      def article_params
        params.require(:article).permit(:title, :body)
      end


  end

end
