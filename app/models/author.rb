class Author < ActiveRecord::Base
has_many :books
belongs_to :library
validates :name , presence:true
end
