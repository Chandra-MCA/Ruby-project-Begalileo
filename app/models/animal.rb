class Animal < ActiveRecord::Base
  has_and_belongs_to_many :roles

  validates :name, :email, :contact, presence: true
  validates :email, uniqueness: true
end
