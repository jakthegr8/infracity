class UsersController < ApplicationController
  def register
    @user = User.new(user_params)
    @user.role_type = get_default_role_type
    respond_to do |format|
      if @user.save
        format.json { render json: @user, status: :created }
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end


  private

  def user_params
    params.permit(:name, :email, :password)
  end

  def get_default_role_type
    @role_type ||= RoleType.where(is_default: true).first
    @role_type
  end
end
