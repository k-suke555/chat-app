class ApplicationController < ActionController::Base
  before_action :authenticate_user!  
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters #deviseでユーザー登録をする場合に使用でき「特定のカラムを許容する」メソッド
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name]) #nameキーの内容の保存をpermitメソッドで許可している
  end
end
