class ProjectsRepresentatives < ActiveRecord::Base
belongs_to :project
belongs_to :representative
end
