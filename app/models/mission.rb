class Mission < ApplicationRecord
    validates  :title, presence: true
    validates  :content, presence: true
    validates  :start_time, presence: true
    validates  :end_time, presence: true
end
