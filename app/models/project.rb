class Project < ActiveRecord::Base
  has_and_belongs_to_many :representatives
  has_and_belongs_to_many :stakeholders
end
