require 'pry'

class Backer

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def my_projects
        ProjectBacker.all.select { |project_instance| project_instance.backer == self }
    end


    def backed_projects
        # returns an array of projects associated with this Backer instance
        self.my_projects.map { |my_project| my_project.project}
        # binding.pry
    end
end
