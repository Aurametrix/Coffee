hashids = new Hashids "this is my salt"
id = hashids.encode 1, 2, 3
numbers = hashids.decode id
