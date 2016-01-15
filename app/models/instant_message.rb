class InstantMessage < ActiveRecord::Base
  validates :message, presence: true, 
                      length: {minimum: 5}
end
