FactoryBot.define do
  factory :ticket do
    name { 'Fake ticket' }
    description { 'Fake description' }
    phone { '+1541-591-2880' }
    closed { false }
    closed_at { nil }
    region
    resource_category

    trait :closed do
      closed { true }
    end
  end
end