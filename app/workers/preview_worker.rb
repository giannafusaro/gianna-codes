class PreviewWorker
  include Sidekiq::Worker

  def perform(params)
    ActionCable.server.broadcast('web_notifications_channel', post: params)
  end
end
