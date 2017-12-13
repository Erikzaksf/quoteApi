class Quote < ApplicationRecord

  def self.search(name)
    where( "author LIKE ?", "%#{name}%" )
  end
end
