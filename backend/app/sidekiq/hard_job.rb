class HardJob
  include Sidekiq::Job
  queue_as :hard

  def perform(count)
    count.times do |c|
      Rails.logger.info("HardJob sleep(#{c}/#{count}) pid: #{ Process.pid }, thread id: #{ Thread.current.object_id }")
      sleep(1)
    end
  end
end
