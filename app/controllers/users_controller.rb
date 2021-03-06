class UsersController < Clearance::UsersController
  def register
    @user = User.where(email: params[:email]).first
    if @user.present?
      render type: :jbuilder
    else
      @user = User.new(user_params)
      @user.role_type = get_default_role_type
      if @user.save
        render type: :jbuilder
      else
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def index
    @user = User.first
  end

  def upload_user_avatar
    @update_user = User.where(id: params[:user][:id]).try(:first)
    avatar_data = params.require(:user).slice('avatar').permit!
    if @update_user.update(avatar_data)
      render type: :jbuilder
    else
      format.json { render json: @update_user.errors, status: :unprocessable_entity }
    end
  end

  def my_uploads
    render json: User.find(params[:id]).photos.map { |image_path| request.base_url + image_path }
  end

end
