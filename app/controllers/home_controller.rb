class HomeController < ApplicationController
    def index
      @servers = Server.all
      @drives = Drive.all
    end
end
