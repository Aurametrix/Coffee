# check is a value is array
myArray = []
console.log typeof myArray // outputs 'object'

# concatenate arrays
array1 = [1, 2, 3]
array2 = [4, 5, 6]
array3 = array1.concat array2
# => [1, 2, 3, 4, 5, 6]

# create a dictionary from an rray of object
cats = [
  {
    name: "Bubbles"
    age: 1
  },
  {
    name: "Sparkle"
    favoriteFood: "tuna"
  }
]

# key = The key by which to index the dictionary
Array::toDict = (key) ->
  @reduce ((dict, obj) -> dict[ obj[key] ] = obj if obj[key]?; return dict), {}

# alternatively, with an array comprehension

catsDict = cats.toDict('name')
  catsDict["Bubbles"]
  # => { age: 1, name: "Bubbles" }

Array::toDict = (key) ->
  dict = {}
  dict[obj[key]] = obj for obj in this when obj[key]?
  dict

# reverse an array

["one", "two", "three"].reverse()
# => ["three", "two", "one"]
