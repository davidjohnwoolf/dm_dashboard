# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :npc do
    user nil
    name "MyString"
    description "MyText"
  end
end
