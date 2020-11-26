class Stamp < ApplicationRecord
  has_one :user
  has_one :test
end
