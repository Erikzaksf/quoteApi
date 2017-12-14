class SerializableQuote < JSONAPI::Serializable::Resource

  type 'quotes'

  attributes :author, :content

  def self.search(name)
    where( "author LIKE ?", "%#{name}%" )
  end
end
