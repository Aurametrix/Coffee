 
isEmptyString = (s) ->
  # Returns true iff s is an empty string.
  # (This returns false for non-strings as well.)
  return true if s instanceof String and s.length == 0
  s == ''
 
empties = ["", '', new String()]
non_empties = [new String('yo'), 'foo', {}]
console.log (isEmptyString(v) for v in empties) # [true, true, true]
console.log (isEmptyString(v) for v in non_empties) # [false, false, false]
console.log (s = '') == "" # true
console.log new String() == '' # false, due to underlying JavaScript's distinction between objects and primitives

matchAt = (s, frag, i) ->
  s[i...i+frag.length] == frag
 
startsWith = (s, frag) ->
  matchAt s, frag, 0
 
endsWith = (s, frag) ->
  matchAt s, frag, s.length - frag.length
 
matchLocations = (s, frag) ->
  (i for i in [0..s.length - frag.length] when matchAt s, frag, i)
 
console.log startsWith "tacoloco", "taco" # true
console.log startsWith "taco", "tacoloco" # false
console.log startsWith "tacoloco", "talk" # false
console.log endsWith "tacoloco", "loco" # true
console.log endsWith "loco", "tacoloco" # false
console.log endsWith "tacoloco", "yoco" # false
console.log matchLocations "bababab", "bab" # [0,2,4]
console.log matchLocations "xxx", "x" # [0,1,2]
 
