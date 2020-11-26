class Stamp < ApplicationRecord
  belongs_to :user
  belongs_to :test
  has_one :code_review
end
