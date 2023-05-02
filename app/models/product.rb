class Product < ActiveRecord::Base
  has_many :patients, dependent: :destroy
  validates :contactNo, presence: true,
                    length: { minimum: 5 }
end
