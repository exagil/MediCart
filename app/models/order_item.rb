class OrderItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  validates_presence_of :product_id, :order_id
  validates :quantity, :numericality => { :greater_than => 0 }

  def subtotal
  	product.price * quantity
  end
end
