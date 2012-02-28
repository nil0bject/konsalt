class ProjectsStakeholders < ActiveRecord::Base
belongs_to :project
belongs_to :stakeholder

before_create :set_creation_date
def set_creation_date
  params[:created_at] = DateTime.now
end

end

