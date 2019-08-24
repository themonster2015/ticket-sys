class Event < ApplicationRecord
    has_many :tickets, class_name: "Ticket", foreign_key: "event_id"
end
