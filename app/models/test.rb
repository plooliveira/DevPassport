class Test < ApplicationRecord
  belongs_to :user
  belongs_to :visa
  has_many :stamps

end
