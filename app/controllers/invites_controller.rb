class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :edit, :update, :destroy]

  def index
    @invites = Invite.all
  end

  def show
  end

  def new
    @invite = current_user.invites.new
  end

  def edit
  end

  def create
    @invite = current_user.invites.new(invite_params)
    respond_to do |format|
      if @invite.save
        format.html { redirect_to invites_url, flash: { success: 'Invite created!' } }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    respond_to do |format|
      if @invite.update(invite_params)
        format.html { redirect_to @invite, notice: 'Invite was successfully updated.' }
        format.json { render :show, status: :ok, location: @invite }
      else
        format.html { render :edit }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @invite.destroy
    respond_to do |format|
      format.html { redirect_to invites_url, notice: 'Invite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_invite
      @invite = Invite.find(params[:id])
    end

    def invite_params
      params.require(:invite).permit(:user_id, :description, :title, :date, :location)
    end
end
