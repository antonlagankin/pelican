module Api
  module V1
    class BlogArticleController < ApplicationController

      def show
        @article = BlogArticle.find(params[:id])
        respond_to do |format|
          format.json do
            render :json => @article.to_json(:only => [:id, :content],
                   :include => [{:blogEntry => {:only => [:id, :content]}},
                                {:blog => {:only => [:id, :description, :tags]}},
                                {:coach => {:only => [:id, :name, :photo]}}]
            )
          end
        end
      end

    end
  end
end
