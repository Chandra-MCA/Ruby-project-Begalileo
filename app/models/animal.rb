class Animal < ActiveRecord::Base
  validates :name, presence: true,
                    length: { minimum: 5 }
  validates :email, presence: true,
                    length: { minimum: 5 }
  validates :contact, presence: true,
                    length: { minimum: 5 }
  validates :gender, presence: true,
                    length: { minimum: 5 }
end
