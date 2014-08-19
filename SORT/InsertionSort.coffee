insertionsort = (array) ->
                length = array.length-1
                for i in [1..length]
                  j=i-1
                  key=array[i]
                  while j>=0 and key<array[j]
                        array[j+1]=array[j]
                        j=j-1
                  array[j+1]=key
