class Article < ApplicationRecord
    include Visible

    has_many :comments, dependent: :destroy
    accepts_nested_attributes_for :comments

    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }

    
  end
  
