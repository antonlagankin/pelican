module Api
  module V1
    class BlogsController < ApplicationController

      def index
        @blogs = Blog.all
        respond_to do |format|
          format.json do
            render :json => @blogs.to_json(:only => [:id, :description, :tags],
                                           :include => {:coach => {:only => [:id, :name]}})
          end
        end
      end

      def show
        @blog = Blog.find(params[:id])
        respond_to do |format|
          format.json do
            render :json => @blog.to_json(:only => [:id, :description, :tags],
                                          :include => {:coach => {:only => [:id, :name]},
                                                       :blog_entries => {:only => [:id, :content, :tags]}})
          end
        end
      end

      private def blog_params
        params.require(:id)
      end

    end
  end
end