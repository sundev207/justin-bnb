# == Schema Information
#
# Table name: reservations
#
#  id             :bigint(8)        not null, primary key
#  guest_id       :integer          not null
#  home_id        :integer          not null
#  num_guests     :integer          not null
#  check_in_date  :date             not null
#  check_out_date :date             not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Reservation < ApplicationRecord
    validates :num_guests, :check_in_date, :check_out_date, presence: true

    belongs_to :guest,
        foreign_key: :guest_id,
        class_name: :User
    
    belongs_to :home,
        foreign_key: :home_id,
        class_name: :Home
end
