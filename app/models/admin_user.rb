class AdminUser < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :username

  scope :search_first_name, lambda {|query| where(["first_name LIKE ?", "%#{query}%"])}
  scope :search_name, lambda {|first, last| where(:first_name => first, :last_name => last)}



end
