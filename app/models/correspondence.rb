class Correspondence < ActiveRecord::Base
  belongs_to :correspondence_type
  belongs_to :representative
  belongs_to :stakeholder
  belongs_to :risk
  belongs_to :project
end
