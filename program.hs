main = do
  -- Init the program at entry point main

  -- Print a line
  putStrLn "What's your name?"
  -- Store terminal input to constant
  name <- getLine
  -- Print a line concatenationg input and strings
  putStrLn ("Hello, " ++ name ++ ".")
