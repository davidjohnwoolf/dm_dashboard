# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :encounter do
    adventure nil
    title "MyString"
    description "MyText"
    reward "MyString"
    experience 1
    completed false
  end
end
