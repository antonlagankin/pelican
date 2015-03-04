module Api
  module V1

    class AboutProjectsController < ApplicationController
      before_action :set_about_project, only: [:show, :edit, :update, :destroy]

      # GET /about_projects
      # GET /about_projects.json
      def index
        @about_projects = AboutProject.last(1)

        respond_to do |format|
          format.json {render json: @about_projects[0], :only => [:description]}
        end
      end

      # GET /about_projects/1
      # GET /about_projects/1.json
      def show
      end

      # GET /about_projects/new
      def new
        @about_project = AboutProject.new
      end

      # GET /about_projects/1/edit
      def edit
      end

      # POST /about_projects
      # POST /about_projects.json
      def create
        @about_project = AboutProject.new(about_project_params)

        respond_to do |format|
          if @about_project.save
            format.html { redirect_to @about_project, notice: 'About project was successfully created.' }
            format.json { render :show, status: :created, location: @about_project }
          else
            format.html { render :new }
            format.json { render json: @about_project.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /about_projects/1
      # PATCH/PUT /about_projects/1.json
      def update
        respond_to do |format|
          if @about_project.update(about_project_params)
            format.html { redirect_to @about_project, notice: 'About project was successfully updated.' }
            format.json { render :show, status: :ok, location: @about_project }
          else
            format.html { render :edit }
            format.json { render json: @about_project.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /about_projects/1
      # DELETE /about_projects/1.json
      def destroy
        @about_project.destroy
        respond_to do |format|
          format.html { redirect_to about_projects_url, notice: 'About project was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_about_project
        @about_project = AboutProject.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def about_project_params
        params.require(:about_project).permit(:decription)
      end
    end
  end
end