# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    event_title "MyString"
    scheduled_at "2013-12-15 22:27:26"
    recurrence "MyString"
    description "MyString"
  end
end
