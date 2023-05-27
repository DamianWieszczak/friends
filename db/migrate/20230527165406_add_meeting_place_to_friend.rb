class AddMeetingPlaceToFriend < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :meeting_place, :string
  end
end
