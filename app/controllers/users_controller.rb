class UsersController < InheritedResources::Base

  def index
    @users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
  @user = User.new(user_params)    # Not the final implementation!
  if @user.save
    flash[:success] = "Create user done!"
    redirect_to @user
    # Handle a successful save.
  else
    render 'new'
  end
end

  private

    def user_params
       params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end

