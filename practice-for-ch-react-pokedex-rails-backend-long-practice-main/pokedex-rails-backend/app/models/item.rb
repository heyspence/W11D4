# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint
#  name       :string           not null
#  price      :string           not null
#  happiness  :string           not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
end
