class Api::V1::HandbagsController < ApplicationController
    before_action :find_bag, only: [:update]
  def index
    @handbags = Handbag.all
    render json: @handbags
  end

  def update
    @handbag.update(handbag_params)
    if @handbag.save
      render json: @handbag, status: :accepted
    else
      render json: { errors: @handbag.errors.full_messages }, status: :unprocessible_entity
    end
  end

  private

  def handbag_params
    params.permit(:name, :designer, :body)
  end

  def find_bag
    @handbag = Handbag.find(params[:id])
  end
end

