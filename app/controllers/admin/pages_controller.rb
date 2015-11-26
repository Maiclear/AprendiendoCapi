class Admin::PagesController < ApplicationController
  before_action :require_admin
  layout 'admin'
  def index

      orders_raw = Order.group(:status).count
  @orders = {}
  @orders[:pendiente] = orders_raw[0]
  @orders[:pagado] = orders_raw[1]
  @orders[:cancelado] = orders_raw[2]
  end
end
