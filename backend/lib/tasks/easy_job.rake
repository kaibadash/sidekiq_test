namespace :easy_job do
  desc "enqueue easy job"
  task :enqueue => :environment do |_task, _args|
    Rails.logger.info("enqueue EasyJob")
    EasyJob.perform_async(10)
  end
end
