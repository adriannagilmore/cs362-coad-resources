FactoryBot.define do
  factory :organization do
    sequence(:name) { |i| "Fake Organization #{i}"}
    status { :approved }
    phone { '541-521-2720' }
    sequence(:email) { |i| "fake#{i}@email.com" }
    description { 'Fake Description' }
    rejection_reason { 'Fake reason' }
    liability_insurance { true }
    primary_name { 'Fake primary name' }
    secondary_name { 'Fake secondary name' }
    secondary_phone { '541-891-3322' }
    title { 'Fake title' }
    transportation { :yes } 
  end
end