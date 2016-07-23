class EssaySimController < ApplicationController
  def index
    @user = current_user
  end
  
  def create 
    @essaySim = EssaySim.new(params[:essay_sim])
    @essaySim.user_email = current_user.email
    if @essaySim.save
      EssayMailer.send_essay(@essaySim).deliver_now
    end
  end 
end
