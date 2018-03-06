class Users::SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = login(login_params[:email], login_params[:password])
        if @user
            redirect_back_or_to(root_path, notice: 'Login successful')
        else
            flash.now[:alert] = 'Login failed'
            render action: 'new'
        end
    end

    def signout
        logout
        redirect_to(root_path, notice: 'Logged out!')
    end

    private
        def login_params
            params.require(:user).permit(:email, :password)
        end
end
