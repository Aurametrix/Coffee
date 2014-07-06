bubbleSort = (list) ->
    anySwaps = false
    swapPass = ->
        for r in [0..list.length-2]
            if list[r] > list[r+1]
                anySwaps = true
                [list[r], list[r+1]] = [list[r+1], list[r]]

    swapPass()
    while anySwaps
        anySwaps = false
        swapPass()
    list

reverseBubbleSort = (list) ->
    anySwaps = false
    swapPass = ->
        for r in [list.length-1..1]
            if list[r] < list[r-1]
                anySwaps = true
                [list[r], list[r-1]] = [list[r-1], list[r]]

    swapPass()
    while anySwaps
        anySwaps = false
        swapPass()
    list
