FactoryBot.define do
  factory :ticket do
    name { 'Fake ticket' }
    description { 'Fake description' }
    phone { '541-591-2880' }
    closed { false }
    closed_at { nil }
    region
    resource_category
  end
end