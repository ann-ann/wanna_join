class UsersController < ApplicationController
  before_action :set_user, only: [:destroy, :update]
  before_action :load_current_user, only: [:edit, :profile, :settings, :edit_profile]

  def profile
  end

  # def settings
  # end

  # def update_profile
  # end

  # def update_settings
  # end

  def edit
  end


  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to profile_users_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def load_current_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit(:name, :email, :age, :interests, :uid, :image_url, :city, :country)
    end
end
