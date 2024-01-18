class EasyJob
  include Sidekiq::Job
  queue_as :easy
  
  def perform(count)
    count.times do |c|
      Rails.logger.info("EasyJob sleep(#{c}/#{count})  pid: #{ Process.pid }, thread id: #{ Thread.current.object_id }")
      sleep(1)
    end
  end
end
