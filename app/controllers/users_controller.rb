class UsersController < ApplicationController
    
    def show
        @users = User.all
        @user = User.find(params[:id])
        @prototype = @user.prototypes
    end
end
        # @user_name = current_user.name
        # @prototype = current_user.prototypes