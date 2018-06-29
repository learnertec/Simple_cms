class Subject < ApplicationRecord
    has_many :pages
    
    scope :visible, -> {where(:visible => true ) }
    scope :invisible, -> {where(:visible => false ) }
    scope :sorted, -> {order("position ASC")}
    scope :newest_first, -> {order("created_at DESC")}
    scope :search, lambda {|query| where(["name LIKE ?", "%#{query}%"])}
    
    validates_presence_of :name
end
