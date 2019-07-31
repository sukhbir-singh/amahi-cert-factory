class ApplicationController < ActionController::API
    before_action :check_authentication

    def check_authentication
        if request.headers["api-key"].blank?
           return render :json => {success: false, message: "authetication failed"}
        end
    end
end
