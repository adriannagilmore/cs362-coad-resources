FactoryBot.define do
  factory :resource_category do
    sequence (:name) { |i| "Fake Category #{i}" }
    active { true }
  end
end