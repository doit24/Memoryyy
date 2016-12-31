class BoardsController < RankingController
before_action :authenticate_user!, only: :new

  def index
    @boards = Board.order('id ASC').limit(20)
  end

  def show
    @boards = Board.order('id ASC').limit(20)
    @board = Board.find(params[:id])
  end

  def search
    @boards = Board.where('title LIKE(?)', "%#{params[:keyword]}%")
  end

  def new
    @board = Board.new
  end

  def create
    Board.create(create_params)
    redirect_to controller: :boards, action: :index
  end

  private
  def create_params
    params.require(:board).permit(:title, :image, :content).merge(user_id: current_user.id, nickname: current_user.nickname)
  end

end
