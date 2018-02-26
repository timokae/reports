class Report < ApplicationRecord
  belongs_to :project
  belongs_to :coworker

  validates_presence_of :title
  validates_presence_of :description

  enum status: [:draft, :ready, :sent]
end
