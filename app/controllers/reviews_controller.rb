class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(params[:review])
    if @review.save
      redirect_to reviews_url, :notice => "Successfully created review."
    else
      render :action => 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    if @review.update_attributes(params[:review])
      redirect_to reviews_url, :notice  => "Successfully updated review."
    else
      render :action => 'edit'
    end
  end
end
