class CommentsController < RankingController
before_action :authenticate_user!, only: :new

  def new
    @board = Board.find(params[:board_id])
    @comment = Comment.new
  end

  def create
    Comment.create(create_params)
    redirect_to controller: :boards, action: :index
  end

  private
  def create_params
    params.require(:comment).permit(:rate, :message, :image).merge(board_id: params[:board_id], user_id: current_user.id, nickname: current_user.nickname)
  end

end
