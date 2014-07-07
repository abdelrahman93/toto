class Library < ActiveRecord::Base
has_many :books
has_many :authors
validates :name, presence:true
validates :url, presence:true
end
