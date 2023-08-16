# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Twix.Repo.insert!(%Twix.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Twix.Users.User

user_list = [
  %{nickname: "banana", email: "banana@pastel.com", age: 43},
  %{nickname: "apple", email: "apple@fruity.com", age: 25},
  %{nickname: "orange", email: "orange@juicy.com", age: 30},
  %{nickname: "grape", email: "grape@vineyard.com", age: 40},
  %{nickname: "kiwi", email: "kiwi@tropical.com", age: 28},
  %{nickname: "pear", email: "pear@orchard.com", age: 35},
  %{nickname: "watermelon", email: "watermelon@refresh.com", age: 22},
  %{nickname: "pineapple", email: "pineapple@tropical.com", age: 31},
  %{nickname: "strawberry", email: "strawberry@berry.com", age: 29},
  %{nickname: "blueberry", email: "blueberry@berry.com", age: 26},
  %{nickname: "raspberry", email: "raspberry@berry.com", age: 27},
  %{nickname: "cherry", email: "cherry@fruitful.com", age: 33},
  %{nickname: "mango", email: "mango@exotic.com", age: 37},
  %{nickname: "peach", email: "peach@delicious.com", age: 24},
  %{nickname: "apricot", email: "apricot@orchard.com", age: 39},
  %{nickname: "blackberry", email: "blackberry@berry.com", age: 34},
  %{nickname: "plum", email: "plum@juicy.com", age: 36},
  %{nickname: "coconut", email: "coconut@tropical.com", age: 32},
  %{nickname: "pomegranate", email: "pomegranate@seeds.com", age: 42},
  %{nickname: "fig", email: "fig@orchard.com", age: 23}
]

user_list
|> Stream.map(&(User.changeset(&1)))
|> Enum.each(&(Twix.Repo.insert!(&1)))
