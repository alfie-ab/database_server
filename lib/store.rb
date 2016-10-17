class Store

  attr_reader :data

  def collect(key, value)
    @data = {key: value}
  end

end
