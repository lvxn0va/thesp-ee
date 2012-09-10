class SchoolsController < ApplicationController
  def index
    @schools = School.all
  end

  def new
    @school = School.new
  end

  def create
    @school = School.new(params[:school])
    if @school.save
      redirect_to schools_url, :notice => "Successfully created school."
    else
      render :action => 'new'
    end
  end

  def edit
    @school = School.find(params[:id])
  end

  def update
    @school = School.find(params[:id])
    if @school.update_attributes(params[:school])
      redirect_to schools_url, :notice  => "Successfully updated school."
    else
      render :action => 'edit'
    end
  end
end
