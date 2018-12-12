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

  def payroll
    actors_salaries = {}
    shows.each do |show|
      show.characters.each do |character|
        actors_salaries[character.actor] = character.salary
      end
    end
    return actors_salaries
  end
end
