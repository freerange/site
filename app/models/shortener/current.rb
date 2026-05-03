module Shortener
  class Current < ActiveSupport::CurrentAttributes
    attribute :user
  end
end
