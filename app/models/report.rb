class Report < ApplicationRecord
  scope :published,   -> { where(public: true) }
end
