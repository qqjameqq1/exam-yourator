class Job < ApplicationRecord
  belongs_to :company, :optional => true
end
