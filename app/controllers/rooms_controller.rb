class RoomsController < ApplicationController
  def new #チャットルーム新規作成のメソッド、form_withに渡す引数として値が空のRoomインスタンスを@roomに代入
    @room = Room.new
  end
end
