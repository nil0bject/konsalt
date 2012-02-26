class Stakeholder < ActiveRecord::Base
  has_many :representatives
  has_and_belongs_to_many :projects
end
