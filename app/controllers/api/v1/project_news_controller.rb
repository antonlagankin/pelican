module Api
  module V1
    class ProjectNewsController < ApplicationController
      before_action :set_project_news, only: [:show, :edit, :update, :destroy]

      # GET /project_news
      # GET /project_news.json
      def index
        @project_news = ProjectNews.last(10)
        respond_to do |format|
          format.json {render json: @project_news, :only => [:date, :content, :tags]}
        end
      end

      # GET /project_news/1
      # GET /project_news/1.json
      def show
      end

      # GET /project_news/new
      def new
        @project_news = ProjectNews.new
      end

      # GET /project_news/1/edit
      def edit
      end

      # POST /project_news
      # POST /project_news.json
      def create
        @project_news = ProjectNews.new(project_news_params)

        respond_to do |format|
          if @project_news.save
            format.html { redirect_to @project_news, notice: 'Project news was successfully created.' }
            format.json { render :show, status: :created, location: @project_news }
          else
            format.html { render :new }
            format.json { render json: @project_news.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /project_news/1
      # PATCH/PUT /project_news/1.json
      def update
        respond_to do |format|
          if @project_news.update(project_news_params)
            format.html { redirect_to @project_news, notice: 'Project news was successfully updated.' }
            format.json { render :show, status: :ok, location: @project_news }
          else
            format.html { render :edit }
            format.json { render json: @project_news.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /project_news/1
      # DELETE /project_news/1.json
      def destroy
        @project_news.destroy
        respond_to do |format|
          format.html { redirect_to project_news_index_url, notice: 'Project news was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_project_news
        @project_news = ProjectNews.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def project_news_params
        params.require(:project_news).permit(:date, :content, :tags)
      end
    end
  end
end
