class UsersController < ApplicationController

  def edit
  end

  def update
      #ユーザー情報の入っているcurrent_userメソッドを使用してログインしているユーザーの情報を更新する
      #current_user.updateに成功した場合root(チャット画面)にリダイレクト
      #失敗した場合render :editによってeditのビューが表示
      if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params #ストロングパラメーターの使用
    params.require(:user).permit(:name, :email) #user_paramsの中でpermitメソッドを使用し(:name, :email)の編集を許可する
  end
end
