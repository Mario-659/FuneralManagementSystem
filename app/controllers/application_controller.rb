class ApplicationController < ActionController::Base
    def is_admin?
        unless current_user && current_user.user_role == 'admin'
          redirect_to root_path, notice: "You are not authorized to access this page."
        end
      end

      def is_client?
        unless current_user && current_user.user_role == 'client'
          redirect_to root_path, notice: "You are not authorized to access this page."
        end
      end
end
