class Representative < ActiveRecord::Base
  belongs_to :stakeholder
  has_and_belongs_to_many :projects
end
