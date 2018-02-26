class Project < ApplicationRecord
  has_many :reports
  has_and_belongs_to_many :coworkers
end
