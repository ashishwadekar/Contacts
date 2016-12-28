class ContactApp < ActiveRecord::Base
	validates :First_name,  :presence => true
	validates :Phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
    validates :Telephone,:allow_blank=>true,  :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
    validates_format_of :Email_Id,:allow_blank=>true, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
    
end
