FactoryGirl.define do
  factory :list do
    name "List"
  end

  factory :item do
    name     "Item"
    complete false
    list_id  1
  end
end