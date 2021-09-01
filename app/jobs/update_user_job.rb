class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user)
    # If using something else other than ActiveJob
    # user = User.find(id)

    puts "Updating information about #{user.email}"
    sleep 3
    puts "Updated #{user.email} using Clearbit API"
  end
end
