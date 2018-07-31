class Tag < ApplicationRecord
  has_many :jobs
  searchkick language: "brazilian"
end
