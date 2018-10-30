module Auth
    def createUser
        @user = User.create(user_params)
        auth_token = AuthenticateUser.new(@user.email, @user.password).call
        @response = { message: Message.account_created, auth_token: auth_token }
      end
    
      private
    
      def user_params
        params.permit(
          :email,
          :password,
          :password_confirmation
        )
      end
end