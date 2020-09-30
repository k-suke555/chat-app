class RoomsController < ApplicationController
  def new #チャットルーム新規作成のメソッド、form_withに渡す引数として値が空のRoomインスタンスを@roomに代入
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end
end
