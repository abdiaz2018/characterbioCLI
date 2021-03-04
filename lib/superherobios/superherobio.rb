class SuperHeroBio

    attr_accessor :name, :id, :full_name, :aliases, :alter_egos, :birthplace, :alignment

@@super_array = []
    def initialize(id, name)
        @name = name
        @id = id
        @@super_array << self
    end

    def self.all
        @@super_array
    end
end