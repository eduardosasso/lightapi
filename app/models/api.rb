class Api
  include DataType

  def initialize(schema)
    @root = schema.keys[0]
    @definition = schema[@root]
  end

  # {
  #  :id=>Integer,
  #  :name=>String,
  #  :created_at=>Date,
  #  :address=>[{:phone=>String, :city=>String}]
  # }
  def build(rows)
    (0...rows).map do |i|
      eval(@definition).inject({}) do |hash, (key, type)|
        hash[key] = (self.respond_to?(key) ? send(key) : type); hash
      end
    end
  end
end
