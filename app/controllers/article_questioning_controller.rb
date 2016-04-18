class ArticleQuestioningController < ApplicationController
  def index 
    @articles = ArticleQuestioning.all
  end
  def show
    @article = ArticleQuestioning.find(params[:id])
    @user = current_user
  end
  
  def create
    @quiz = QuizResult.new(params[:quiz_results])
    if @quiz.save
      @article = ArticleQuestioning.find(@quiz.article_questioning_id)
    end
  end
end