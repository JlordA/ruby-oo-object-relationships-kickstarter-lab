require 'pry'

class ProjectBacker

    attr_reader :project, :backer

    @@all = []

    def initialize(project, backer)
        @project = project
        @backer = backer
        @@all << self
        # binding.pry
    end

    def self.all
        @@all
    end

    def projects
        # # build an instance method that returns all 
        # the projects associated with _this Backer instance.
        # Since Project instances are not directly associated
        # with Backer instances, you will need to get this 
        # information _through_ the ProjectBacker class.
    end

end
