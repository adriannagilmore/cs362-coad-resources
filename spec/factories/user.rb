FactoryBot.define do
  factory :user do
    sequence(:email) { |i| "fake#{i}@email.com"}
    password { 'password' }
    password_confirmation { 'password' }
 
    trait :organization do
      organization
      role{'organization'}
    end

    trait :admin do
      organization
      role{'admin'}
    end
  end
end
