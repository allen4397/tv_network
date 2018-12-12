require 'pry'

class Network
  attr_reader :name,
              :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def highest_paid_actor
    highest_salary_character = nil
    shows.max_by do |show|
      highest_salary_character = show.characters.max_by do |character|
        character.salary
      end
      highest_salary_character.salary
    end
    highest_salary_character.actor
  end
end
