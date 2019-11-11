class Store < ActiveRecord::Base
has_many :employees
validates :name, length:{minimum:3};
#  * Stores have an annual_revenue that is a number 
#(integer) that must be 0 or more
validates :annual_revenue, presence: true, numericality: { greater_than: 0 }

end
