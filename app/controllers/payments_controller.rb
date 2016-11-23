class PaymentsController < ApplicationController
  before_action :set_order

  def new
  end

def create
  customer = Stripe::Customer.create(
    source: params[:stripeToken],
    email:  params[:stripeEmail]
  )

  charge = Stripe::Charge.create(
    customer:     customer.id,   # You should store this customer id and re-use it.
    amount:       @order.amount_cents, # or amount_pennies
    description:  "MERCH-Factory Custom Merchandise",
    currency:     :eur
  )

  @order.update(payment: charge.to_json, status: 'paid')
  redirect_to orders_checkout_path

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to orders_checkout_path
end
  private

  def set_order
    @order = current_user.orders.last
  end
end
