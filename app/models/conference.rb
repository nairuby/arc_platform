# == Schema Information
#
# Table name: conferences
#
#  id         :bigint           not null, primary key
#  end_date   :datetime
#  location   :string
#  start_date :datetime
#  status     :integer          default(0)
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Conference < ApplicationRecord
end
