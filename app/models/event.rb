class Event < ActiveRecord::Base
  belongs_to :admin
  belongs_to :venue
end
