# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
e = Event.create(name: "白門祭の打ち上げ", description: "11月のどこかで白門祭の打ち上げしますので日程調整してください!")
u = User.create(
  user_name: "草野みどり",
  sunday_1: true, sunday_2: false, sunday_lunch: true, sunday_3: false, sunday_4: true, sunday_5: false, sunday_6: true, sunday_night: false,
  monday_1: false, monday_2: true, monday_lunch: false, monday_3: true, monday_4: false, monday_5: true, monday_6: false, monday_night: true,
  tuesday_1: true, tuesday_2: false, tuesday_lunch: true, tuesday_3: false, tuesday_4: true, tuesday_5: false, tuesday_6: true, tuesday_night: false,
  wednesday_1: false, wednesday_2: true, wednesday_lunch: false, wednesday_3: true, wednesday_4: false, wednesday_5: true, wednesday_6: false, wednesday_night: true,
  thursday_1: true, thursday_2: false, thursday_lunch: true, thursday_3: false, thursday_4: true, thursday_5: false, thursday_6: true, thursday_night: false,
  friday_1: false, friday_2: true, friday_lunch: false, friday_3: true, friday_4: false, friday_5: true, friday_6: false, friday_night: true,
  saturday_1: true, saturday_2: false, saturday_lunch: true, saturday_3: false, saturday_4: true, saturday_5: false, saturday_6: true, saturday_night: false
)
e.users << u
u = User.create(
  user_name: "佐藤太郎",
  sunday_1: false, sunday_2: true, sunday_lunch: false, sunday_3: true, sunday_4: false, sunday_5: true, sunday_6: false, sunday_night: true,
  monday_1: true, monday_2: false, monday_lunch: true, monday_3: false, monday_4: true, monday_5: false, monday_6: true, monday_night: false,
  tuesday_1: false, tuesday_2: true, tuesday_lunch: false, tuesday_3: true, tuesday_4: false, tuesday_5: true, tuesday_6: false, tuesday_night: true,
  wednesday_1: true, wednesday_2: false, wednesday_lunch: true, wednesday_3: false, wednesday_4: true, wednesday_5: false, wednesday_6: true, wednesday_night: false,
  thursday_1: false, thursday_2: true, thursday_lunch: false, thursday_3: true, thursday_4: false, thursday_5: true, thursday_6: false, thursday_night: true,
  friday_1: true, friday_2: false, friday_lunch: true, friday_3: false, friday_4: true, friday_5: false, friday_6: true, friday_night: false,
  saturday_1: false, saturday_2: true, saturday_lunch: false, saturday_3: true, saturday_4: false, saturday_5: true, saturday_6: false, saturday_night: true
)
e.users << u
u = User.create(
  user_name: "山田花子",
  sunday_1: true, sunday_2: false, sunday_lunch: true, sunday_3: false, sunday_4: true, sunday_5: false, sunday_6: true, sunday_night: false,
  monday_1: false, monday_2: true, monday_lunch: false, monday_3: true, monday_4: false, monday_5: true, monday_6: false, monday_night: true,
  tuesday_1: true, tuesday_2: false, tuesday_lunch: true, tuesday_3: false, tuesday_4: true, tuesday_5: false, tuesday_6: true, tuesday_night: false,
  wednesday_1: false, wednesday_2: true, wednesday_lunch: false, wednesday_3: true, wednesday_4: false, wednesday_5: true, wednesday_6: false, wednesday_night: true,
  thursday_1: true, thursday_2: false, thursday_lunch: true, thursday_3: false, thursday_4: true, thursday_5: false, thursday_6: true, thursday_night: false,
  friday_1: false, friday_2: true, friday_lunch: false, friday_3: true, friday_4: false, friday_5: true, friday_6: false, friday_night: true,
  saturday_1: true, saturday_2: false, saturday_lunch: true, saturday_3: false, saturday_4: true, saturday_5: false, saturday_6: true, saturday_night: false
)
e.users << u


e = Event.create(name: "26卒就職セミナー", description: "4月中に実施します．場所は追って連絡します．")
u = User.create(
  user_name: "田中一郎",
  sunday_1: false, sunday_2: true, sunday_lunch: false, sunday_3: true, sunday_4: false, sunday_5: true, sunday_6: false, sunday_night: true,
  monday_1: true, monday_2: false, monday_lunch: true, monday_3: false, monday_4: true, monday_5: false, monday_6: true, monday_night: false,
  tuesday_1: false, tuesday_2: true, tuesday_lunch: false, tuesday_3: true, tuesday_4: false, tuesday_5: true, tuesday_6: false, tuesday_night: true,
  wednesday_1: true, wednesday_2: false, wednesday_lunch: true, wednesday_3: false, wednesday_4: true, wednesday_5: false, wednesday_6: true, wednesday_night: false,
  thursday_1: false, thursday_2: true, thursday_lunch: false, thursday_3: true, thursday_4: false, thursday_5: true, thursday_6: false, thursday_night: true,
  friday_1: true, friday_2: false, friday_lunch: true, friday_3: false, friday_4: true, friday_5: false, friday_6: true, friday_night: false,
  saturday_1: false, saturday_2: true, saturday_lunch: false, saturday_3: true, saturday_4: false, saturday_5: true, saturday_6: false, saturday_night: true
)
e.users << u

u = User.create(
  user_name: "鈴木次郎",
  sunday_1: true, sunday_2: true, sunday_lunch: false, sunday_3: false, sunday_4: true, sunday_5: true, sunday_6: false, sunday_night: false,
  monday_1: false, monday_2: false, monday_lunch: true, monday_3: true, monday_4: false, monday_5: true, monday_6: true, monday_night: false,
  tuesday_1: true, tuesday_2: true, tuesday_lunch: false, tuesday_3: true, tuesday_4: false, tuesday_5: false, tuesday_6: true, tuesday_night: true,
  wednesday_1: true, wednesday_2: false, wednesday_lunch: true, wednesday_3: true, wednesday_4: false, wednesday_5: true, wednesday_6: false, wednesday_night: true,
  thursday_1: false, thursday_2: true, thursday_lunch: false, thursday_3: false, thursday_4: true, thursday_5: true, thursday_6: false, thursday_night: true,
  friday_1: true, friday_2: false, friday_lunch: true, friday_3: true, friday_4: false, friday_5: true, friday_6: false, friday_night: true,
  saturday_1: false, saturday_2: true, saturday_lunch: false, saturday_3: true, saturday_4: false, saturday_5: true, saturday_6: true, saturday_night: false
)
e.users << u

u = User.create(
  user_name: "木村美咲",
  sunday_1: false, sunday_2: false, sunday_lunch: true, sunday_3: true, sunday_4: false, sunday_5: false, sunday_6: true, sunday_night: true,
  monday_1: true, monday_2: false, monday_lunch: true, monday_3: true, monday_4: false, monday_5: false, monday_6: true, monday_night: false,
  tuesday_1: false, tuesday_2: true, tuesday_lunch: true, tuesday_3: false, tuesday_4: true, tuesday_5: false, tuesday_6: true, tuesday_night: false,
  wednesday_1: true, wednesday_2: true, wednesday_lunch: false, wednesday_3: true, wednesday_4: false, wednesday_5: true, wednesday_6: false, wednesday_night: true,
  thursday_1: true, thursday_2: false, thursday_lunch: true, thursday_3: false, thursday_4: true, thursday_5: false, thursday_6: true, thursday_night: true,
  friday_1: false, friday_2: true, friday_lunch: false, friday_3: true, friday_4: true, friday_5: false, friday_6: true, friday_night: false,
  saturday_1: true, saturday_2: false, saturday_lunch: true, saturday_3: true, saturday_4: false, saturday_5: true, saturday_6: false, saturday_night: true
)
e.users << u

u = User.create(
  user_name: "佐々木亮",
  sunday_1: true, sunday_2: true, sunday_lunch: false, sunday_3: false, sunday_4: true, sunday_5: true, sunday_6: false, sunday_night: true,
  monday_1: false, monday_2: true, monday_lunch: true, monday_3: false, monday_4: true, monday_5: false, monday_6: true, monday_night: false,
  tuesday_1: true, tuesday_2: false, tuesday_lunch: false, tuesday_3: true, tuesday_4: false, tuesday_5: true, tuesday_6: true, tuesday_night: false,
  wednesday_1: false, wednesday_2: true, wednesday_lunch: true, wednesday_3: false, wednesday_4: true, wednesday_5: true, wednesday_6: false, wednesday_night: true,
  thursday_1: true, thursday_2: false, thursday_lunch: true, thursday_3: false, thursday_4: true, thursday_5: false, thursday_6: true, thursday_night: false,
  friday_1: true, friday_2: true, friday_lunch: false, friday_3: true, friday_4: false, friday_5: true, friday_6: false, friday_night: true,
  saturday_1: false, saturday_2: true, saturday_lunch: true, saturday_3: false, saturday_4: true, saturday_5: true, saturday_6: false, saturday_night: false
)
e.users << u