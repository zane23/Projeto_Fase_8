class Api::V2::OutlayController < ApplicationController
  before_action :authenticate_with_token!

  def index
    outlays = current_user.outlays
    render json: { outlays: outlays }, status: 200
  end

  def show
    outlay = current_user.outlays.find(params[:id])
    render json: outlay, status: 200
  end

  def create
    outlay = current_user.outlays.build(gain_params)
    if outlay.save
      render json: outlay, status: 201
    else
      render json: { errors: outlay.errors }, status: 422
    end
  end

  def destroy
    outlay = current_user.outlays.find(params[:id])
    outlay.destroy
    head 204
  end

  def update
    outlay = current_user.outlays.find(params[:id])
    if outlay.update_attributes(gain_params)
      render json: outlay, status: 200
    else
      render json: { errors: outlay.errors }, status: 422
    end
  end

  private

  def gain_params
    params.require(:outlay).permit(:description, :value, :date)
  end
end
