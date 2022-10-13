class DrivesController < ApplicationController
    def index
        @drives = Drive.all
    end
end
