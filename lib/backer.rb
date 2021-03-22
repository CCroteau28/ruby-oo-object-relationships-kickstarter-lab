require 'pry'

class Backer
    attr_accessor :name, :backed_projects, :back_project, :project_backer
     
    def initialize(name)
        @name = name
        @back_project = []
        @backed_projects = []
    end

    def back_project(project)
       ProjectBacker.new(project, self)
    end

    def backed_projects
      pbs = ProjectBacker.all.select {|pb| pb.backer == self}
      pbs.map do |pb|
        pb.project
      end
    end
end