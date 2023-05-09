class Product < ActiveRecord::Base
  has_many :patients, dependent: :destroy
  validates :contactNo, presence: true, length: { minimum: 5 }

# before_destroy :display_product_address, on: :destroy
#
#   def display_product_address
#     if self.address.present?
#       address = self.address
#       puts "=====Product address is #{address}====="
#     else
#       puts "=====address cannot be blank====="
#     end
#   end
#
#  after_update :display_product_gender,
#
#   def display_product_gender
#     if self.gender.present?
#       gender = self.gender
#       puts "=====product gender is #{gender}====="
#     else
#       puts "=====gender cannot be blank====="
#     end
#   end

end
