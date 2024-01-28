namespace :hard_job do
  desc "enqueue hard job. bin/rails hard_job:enqueue"
  task :enqueue => :environment do |_task, _args|
    Rails.logger.info("enqueue HardJob")
    1.times do |c|
      puts "HardJob.perform_async##{c}"
      HardJob.perform_async(10)
    end
  end
end
