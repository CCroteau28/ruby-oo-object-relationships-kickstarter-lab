class ProjectBacker
    attr_accessor :new, :project_backer

    @@all = []

    def initialize(new, project_backer)
        @new = new
        @project_backer = []
        @@all << self
    end

    def self.all
        @@all
    end
end