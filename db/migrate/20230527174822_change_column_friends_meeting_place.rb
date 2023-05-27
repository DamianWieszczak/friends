class ChangeColumnFriendsMeetingPlace < ActiveRecord::Migration[7.0]
  def change
    change_column :friends, :meeting_place, :integer, default: Friend.meeting_places[:other]
  end
end
