require 'pry'

class Project
    attr_accessor :title, :add_backer, :backers

    def initialize(title)
        @title = title
        @add_backer = []
        @backers = []
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        pbs = ProjectBacker.all.select {|pb| pb.project == self}
        pbs.map do |pb|
            pb.backer
        end
    end
end