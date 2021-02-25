FactoryBot.define do
  factory :region do
    sequence (:name) { |i| "Fake Name #{i}" }
  end
end