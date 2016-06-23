FactoryGirl.define do
  factory :task do
    title "MyString"
    content "MyText"
    status "MyString"
    start_date "2016-06-23 13:15:33"
    due_date "2016-06-23 13:15:33"
    estimations "2016-06-23 13:15:33"
    project nil
    user nil
  end
end
