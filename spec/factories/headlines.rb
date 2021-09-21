FactoryBot.define do
  factory :headline do
    title { Faker::Book.title }
    content { Faker::Lorem.paragraphs }
    user
  end
end
