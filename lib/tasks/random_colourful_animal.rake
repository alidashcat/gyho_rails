# frozen_string_literal: true

begin
  require "random_colourful_animal/rake_task"

  RandomColourfulAnimal::RakeTask.new
rescue LoadError
  task random_colourful_animal: :environment do
    abort "Random colourful animal is not available in production"
  end
end
