class FakeJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    puts "Running the job"
    sleep 3
    puts "Finished the job"
  end
end
