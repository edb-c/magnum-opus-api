class NylotteryapiSerializer < ActiveModel::Serializer
  attributes :id, :winning_numbers, :bonus, :draw_date
end
