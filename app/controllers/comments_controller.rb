class CommentsController < ApplicationController
  def index
    @comments = Comment.all.page(params[:page]).per(5)
  end

  def create
    if signed_in?
      @user = current_user
      @comment = current_user.comments.build comment_params
      @dish = Dish.find params[:comment][:dish_id]
      if @comment.save
        flash[:success] = 'Commented success!'
        redirect_to dish_path(@dish)
      else
        flash[:danger] = 'Please ,try again!'
        redirect_to dish_path(@dish)
      end
    else
      redirect_to login_path
    end
  end


  def destroy
    @comment.destroy
    flash[:success] = 'Detele comment success'
  end

  private

  def comment_params
    params.require(:comment).permit :contents, :user_id, :dish_id
  end
end
