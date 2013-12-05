class Part < ActiveRecord::Base
  attr_accessible :partdesc, :partnumber, :product_id
  belongs_to :product
end
