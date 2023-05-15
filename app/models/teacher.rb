class Teacher < ActiveRecord::Base
  has_many :students, dependent: :destroy
  validates :contact, presence: true,
                    length: { minimum: 10 }
end
