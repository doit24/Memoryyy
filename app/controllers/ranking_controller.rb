class RankingController < ApplicationController
  layout 'comment_site'
  before_action :ranking

  def ranking
    board_ids = Comment.group(:board_id).order('count_board_id DESC').limit(5).count(:board_id).keys
    @ranking = board_ids.map{|id| Board.find(id) }
  end
end
