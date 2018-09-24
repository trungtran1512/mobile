class UsersController < InheritedResources::Base

  def index
    @users = User.all
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end

