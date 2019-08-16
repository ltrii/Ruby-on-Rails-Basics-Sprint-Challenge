require "publishable/version"

module Publishable
  class Error < StandardError; end
  
  def self.publish(data)
    (data).update({ published_at: Time.now })
  end
  def self.unpublish(data)
    (data).update({ published_at: nil })
  end
  def self.published?(data)
    data.published_at.present?
  end
end
