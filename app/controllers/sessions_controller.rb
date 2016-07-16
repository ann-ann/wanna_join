class SessionsController < ApplicationController
  skip_before_action :require_authentication,    except: [ :destroy ]

  def create
    @user = User.from_omniauth(request.env['omniauth.auth'])
    if @user
      session[:user_id] = @user.id
      redirect_to invites_path
    else
      flash[:warning] = "There was an error while trying to authenticate you..."
      redirect_to root_path
    end
  end

  def destroy
    if current_user
      session.delete(:user_id)
      flash[:success] = 'See you!'
    end
    redirect_to root_path
  end
end
