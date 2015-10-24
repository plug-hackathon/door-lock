FactoryGirl.define do
  factory :user_cipher do
    username "John"
    plain    "abcdefghijklmnoprstuvwz"
    cipher   "zabcdefghijklmnoprstuvw"
  end
end
