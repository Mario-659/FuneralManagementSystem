class Users::RegistrationsController < Devise::RegistrationsController
    
    def create
        super do |user|
          user.update! user_role: 'client'
        end
      end

    private
      def sign_up_params
        params.require(:user).permit(:email, :password, :password_confirmation)
      end
end
