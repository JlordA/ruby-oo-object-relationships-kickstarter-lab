require 'pry'

class Project

    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def my_backers
        ProjectBacker.all.select { |backer_instance| backer_instance.project == self}
    end

    def backers
        # that returns all _backers_ associated with
        #  this Project instance.
        self.my_backers.map { |my_backer| my_backer.backer }
    end
end
