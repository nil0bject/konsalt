class ProjectsStakeholders < ActiveRecord::Base
belongs_to :project
belongs_to :stakeholder

before_create :set_timestamps
def set_timestamps
  puts "setting timestamps"
  self[:created_at] = DateTime.now
  self[:updated_at] = DateTime.now
end

end

