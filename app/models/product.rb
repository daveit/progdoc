class Product < ActiveRecord::Base
  has_many :documents

  def name
    return self.part
  end

  #def to_label
  #  "#{part}"
  #end

end
