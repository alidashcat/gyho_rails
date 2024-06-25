# frozen_string_literal: true

Rake::Task[:default].prerequisites.clear if Rake::Task.task_defined? :default

task default: %i[
  rspec
  cucumber
  rubocop
  random_colourful_animal
  success
]

task success: :environment do
  sh 'afplay lib/tasks/batmansound.mp3 || echo Get Your Hench On!! Woo!'
end