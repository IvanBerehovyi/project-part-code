# frozen_string_literal: true

class DeliveryController < ApplicationController
  before_action :delivery_params

  def delivery
    @result = Delivery::DeliveryObject.new(params[:id]).delivery_object
    respond_to do |format|
      format.html { render :show, layout: false, locals: { result: @result } }
      format.json {
        render json: { html: render_to_string(partial: 'example', locals: { result: @result }, layout: false) }
      }
    end
  end

  private

  def delivery_params
    params.permit(:delivery_get_params)
  end
end
