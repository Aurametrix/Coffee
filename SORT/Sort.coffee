sortBy = (key, a, b, r) ->
    r = if r then 1 else -1
    return -1*r if a[key] > b[key]
    return +1*r if a[key] < b[key]
    return 0

users.sort (a,b) ->
    sortBy('id', a, b, true) or
    sortBy('lname', a, b) or
    sortBy('fname', a, b)

sortByMultiple = (a, b, keys) ->
    return r if (r = sortBy key, a, b) for key in keys
    return 0

users.sort (a,b) -> sortByMultiple a, b, ['id', 'lname', 'fname']
