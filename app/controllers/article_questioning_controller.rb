class ArticleQuestioningController < ApplicationController
  def index 
    @articles = ArticleQuestioning.all
  end
  def show
    @article = ArticleQuestioning.find(params[:id])
  end
end
