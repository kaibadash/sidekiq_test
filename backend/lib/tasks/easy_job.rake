namespace :easy_job do
  desc "enqueue easy job. bin/rails easy_job:enqueue"
  task :enqueue => :environment do |_task, _args|
    Rails.logger.info("enqueue EasyJob")
    10.times do |c|
      puts "EasyJob.perform_async##{c}"
      EasyJob.perform_async(10)
    end
  end
end
