class AssetsController < ApplicationController
    def new
        @asset = Asset.create(title: params[:title], description: params[:description], link: params[:link], course_id: params[:course_id])
        render :json => @asset
    end

    def update
        @asset = Asset.find(params[:id])
        if params["vote_value"]
            @asset.votes += params["vote_value"].to_i
            @asset.save
        else
            @asset.update(title: params[:title], description: params[:description], link: params[:link], course_id: params[:course_id])
        end
        render :json => @asset
    end
end
