class ApplicationController < ActionController::Base
    before_action :check_auth

    private
    def check_auth
        if session['user'].nil?
            redirect_to(controller: :welcome, action: :start)
            false
        else
            true
        end
    end
end
