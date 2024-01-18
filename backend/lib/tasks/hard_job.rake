namespace :hard_job do
  desc "enqueue hard job"
  task :enqueue => :environment do |_task, _args|
    Rails.logger.info("enqueue HardJob")
    HardJob.perform_async(10)
  end
end
