class ApplicationController < ActionController::Base
    def after_sign_in_path_for(admin)
        admin_home_path 
    end  
end
