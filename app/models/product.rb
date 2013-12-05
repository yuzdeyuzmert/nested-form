class Product < ActiveRecord::Base
  attr_accessible :desc, :pnumber
  has_many :parts
end
