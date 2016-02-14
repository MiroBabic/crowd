class PicturesController < ApplicationController
  before_action :set_project

  def create
    add_more_pictures(pictures_params[:pictures])
    flash[:error] = "Failed uploading pictures" unless @project.save
    redirect_to :back
  end

  def destroy
    remove_picture_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting picture" unless @project.save
    redirect_to :back
  end

  private

  def set_project
    @project = Project.find(params[:project_id])
  end

  def add_more_pictures(new_pictures)
    pictures = @project.pictures 
    pictures += new_pictures
    @project.pictures = pictures
  end

  def remove_picture_at_index(index)
    remain_pictures = @project.pictures # copy the array
    deleted_picture = remain_pictures.delete_at(index) # delete the target picture
    deleted_picture.try(:remove!) # delete picture from S3
    @project.pictures = remain_pictures # re-assign back
  end

  def pictures_params
    params.require(:project).permit({pictures: []}) # allow nested params as array
  end
end