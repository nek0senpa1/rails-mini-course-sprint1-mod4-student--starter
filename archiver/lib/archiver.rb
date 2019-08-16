require "archiver/version"

module Archiver
  class Error < StandardError; end
  # Your code goes here...
  def archive
    update({archived_at: Time.now})
  end

  def restore
    update({archived_at: nil})
  end

  def archived?
    archived_at.present?
  end


end
