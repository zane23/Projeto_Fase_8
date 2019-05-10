class Api::V2::OutlaysController < BaseController
  before_action :authenticate_user!

  def index
    outlays = current_user.outlays.ransack(params[:q]).result
    render json: outlays, status: 200
  end

  def show
    outlay = current_user.outlays.find(params[:id])
    render json: outlay, status: 200
  end

  def create
    outlay = current_user.outlays.build(outlay_params)
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
    if outlay.update_attributes(outlay_params)
      render json: outlay, status: 200
    else
      render json: { errors: outlay.errors }, status: 422
    end
  end

  private

  def outlay_params
    params.require(:outlay).permit(:description, :value, :date)
  end
end
