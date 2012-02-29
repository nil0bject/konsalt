class ProjectsStakeholders < ActiveRecord::Base
belongs_to :project
belongs_to :stakeholder
end

