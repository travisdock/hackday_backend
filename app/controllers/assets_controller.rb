class AssetsController < ApplicationController
    def new
        @asset = Asset.create(params[:asset])
        render :json => @asset
    end
end
