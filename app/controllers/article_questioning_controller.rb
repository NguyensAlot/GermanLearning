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
    if @quiz.save()
      @article = ArticleQuestioning.find(@quiz.article_questioning_id)
    end
  end
end
=begin
20160225204357_create_article_questionings.rb

class CreateArticleQuestionings < ActiveRecord::Migration
  def change
    create_table :article_questionings do |t|
      t.text :article
      t.text :questions
      t.text :answer_choices
      t.text :correct_answers
      t.integer :num_of_questions
      t.integer :num_of_answer_choices
      

      t.timestamps null: false
    end
  end
end

=end