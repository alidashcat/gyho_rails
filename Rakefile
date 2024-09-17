# frozen_string_literal: true

# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"

if defined? RSpec
  RSpec.configure do |config|
    # Disable RSwag's "dry run" mode - this will actually run the specs and is necessary in order to
    # automatically generate example responses in the API documentation based on the actual responses
    # returned during testing.
    # See: https://github.com/rswag/rswag#enable-auto-generation-examples-from-responses
    config.rswag_dry_run = false
  end
end

Rails.application.load_tasks
