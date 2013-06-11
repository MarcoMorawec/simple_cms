class AdminUser < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :username

  #adding the relationsships between AdminUser - admin_users_pages (join table) - Pages
  has_and_belongs_to_many :pages

  has_many :section_edits
  #admin_user has many :sections if you go :through the :section_Edits rich join table
  has_many :sections, :through => :section_edits


  scope :search_first_name, lambda {|query| where(["first_name LIKE ?", "%#{query}%"])}
  scope :search_name, lambda {|first, last| where(:first_name => first, :last_name => last)}



end
