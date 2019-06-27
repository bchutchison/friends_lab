def get_name(person)
  return person[:name]
end

def get_show(person)
  return person[:favourites][:tv_show]
end

# def likes_to_eat(person, food)
#  food == person[:favourites][:snacks][0]
# end





def likes_to_eat(person, food)

  for x in person[:favourites][:snacks]
    if x == food
      return true
    end
  end
  return false
end


def friends(person, name)
  person[:friends] << name
end


def remove_friends(person, friend)
  person[:friends].delete(friend)
end

def total_money(array)
  total = 0
  for person in array
    total += person[:monies]
  end
  return total
end

def money_lending(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def favourite_food_all(array)
  food = []
  for item in array
    food += item[:favourites][:snacks]
  end
  return food
end


def friendless(array)
  people = []
  for person in array
    if person[:friends].length == 0
      people << person[:name]
    end
  end
  return people
end
