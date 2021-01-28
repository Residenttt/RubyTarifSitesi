class PagesController < ApplicationController

    def index
        # eğer giriş yapılmışsa direkt tarifler sayfasına gönderecek ana sayfa
        #redirect_to tariflers_path if logged_in?
    end

end