def pet_shop_name(pet_shop_hash)
  return pet_shop_hash[:name]
end

def total_cash(sum)
  return sum[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_hash,cash_to_add)
  pet_shop_hash[:admin][:total_cash] += cash_to_add
end

def add_or_remove_cash(pet_shop_hash,cash_to_remove)
  pet_shop_hash[:admin][:total_cash] += cash_to_remove
end

def pets_sold(pet_shop_hash)
  pet_shop_hash[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_hash,pets_to_add)
  pet_shop_hash[:admin][:pets_sold] += pets_to_add
end

def stock_count(pet_shop_hash)
  pet_shop_hash[:pets].length
end

def pets_by_breed(pet_shop_hash,pet_breed)
  matching_breeds = []
  for pet in pet_shop_hash[:pets]
    if pet[:breed] == pet_breed
    matching_breeds.push(pet)
    end
  end
  return matching_breeds
end

def pets_by_breed(pet_shop_hash,pet_breed)
  matching_breeds = []
  for pet in pet_shop_hash[:pets]
    if pet[:breed] == pet_breed
      matching_breeds.push(pet)
    end
  end
  return matching_breeds
end

def find_pet_by_name(pet_shop_hash,pet_name)
  for pet in pet_shop_hash[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end
end

def find_pet_by_name(pet_shop_hash,no_pet_name)
  for pet in pet_shop_hash[:pets]
    if (pet[:name] == no_pet_name)
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop_hash,pet_name)
  for pet in pet_shop_hash[:pets]
    if pet[:name] == pet_name
      pet_shop_hash[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop_hash,new_pet_hash)
  pet_shop_hash[:pets].unshift(new_pet_hash)
  pet_shop_hash[:pets].length
end

def customer_pet_count(customers_array)
    return customers_array[:pets].length
end

def add_pet_to_customer(customers_array,new_pet)
  customers_array[:pets].push@new_pet
  return customers_array[:pets].length
end
