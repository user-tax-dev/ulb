> ./callerLine.js

< (fn)=>
  caller = callerLine()
  (args...)->
    n = 0
    loop
      try
        return await fn.apply(@,args)
      catch err
        console.trace()
        console.error fn, arguments, '\n'+caller
        if ++n > 3
          throw err
    return