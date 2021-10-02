# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  post_id    :bigint           not null
#  user_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  content    :string
#
# Indexes
#
#  index_comments_on_post_id  (post_id)
#  index_comments_on_user_id  (user_id)
#
FactoryBot.define do
  factory :comment do
    post { FactoryBot.create(:post) }
    user { FactoryBot.create(:user) }
    content { Faker::String.random(length: 3).gsub("\u0000", '') }
  end
end
