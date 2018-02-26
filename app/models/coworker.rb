class Coworker < ApplicationRecord
  has_and_belongs_to_many :projects
  has_many :reports

  validates_presence_of :name
  validates_presence_of :email
end
