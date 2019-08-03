person1 = {
  name: "Shaggy",
  age: 12,
  monies: 1,
  friends: ["Velma","Fred","Daphne", "Scooby"],
  favourites: {
    tv_show: "Friends",
    snacks: ["charcuterie"]
  }
}


person2 = {
  name: "Velma",
  age: 15,
  monies: 2,
  friends: ["Fred"],
  favourites: {
    tv_show: "Baywatch",
    snacks: ["soup","bread"]
  }
}

person3 = {
  name: "Scooby",
  age: 18,
  monies: 20,
  friends: ["Shaggy", "Velma"],
  favourites: {
    tv_show: "Pokemon",
    snacks: ["Scooby snacks"]
  }
}

person4 = {
  name: "Fred",
  age: 18,
  monies: 20,
  friends: ["Shaggy", "Velma", "Daphne"],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spaghetti", "ratatouille"]
  }
}

person5 = {
  name: "Daphne",
  age: 20,
  monies: 100,
  friends: [],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spinach"]
  }
}

people = [person1, person2, person3, person4, person5]

#question 1
def get_name(person)
  return person[:name]
end

#question 2
def return_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

#question 3
def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    end
  end
  return false
end


#question 4
def adds_friend(person, new_friend)
  person[:friends].push(new_friend)
end

#question 5
def removes_friend(person, old_friend)
  person[:friends].delete(old_friend)
end
#removes_friend(person1, "Scooby")
#puts person1

#question 6
def find_total_monies(people)
  total_monies = 0
  for person in people
    total_monies += person[:monies]
  end
  return total_monies
end

#question 7
def loan(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

#question 8
def adds_all_favourite_foods(people)
  all_favourite_foods = []
  for person in people
    all_favourite_foods.concat(person[:favourites][:snacks])
  end
  return all_favourite_foods
end

#adds_all_favourite_foods(people)

#question 9
def find_people_with_no_friends(people)
  people_with_no_friends = []
  for person in people
    if person[:friends].length == 0
      people_with_no_friends.push(person)
    end
  end
  return people_with_no_friends
end
find_people_with_no_friends(people)
