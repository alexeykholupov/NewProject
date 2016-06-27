FactoryGirl.define do
  factory :comment, class: 'Comments' do
    content "MyText"
    user nil
    post nil
  end
end
