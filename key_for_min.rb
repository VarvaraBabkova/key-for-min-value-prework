# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  return nil if name_hash == {}
  min_price = name_hash.first.value
  min_name = name_hash.first.key

  name_hash.collect do |name, price|
    if price < min_price
      min_price = price
      min_name = name
    end
  end
  return name
end
