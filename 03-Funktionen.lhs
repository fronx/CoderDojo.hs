plus1 :: Int -> Int
plus1 zahl = zahl + 1

plus :: Int -> Int -> Int
plus a b = a + b

-- Aufgabe 1
mal4 :: Int -> Int
mal4 = undefined

-- Aufgabe 2
mal :: Int -> Int -> Int
mal = undefined

main = do
  print (plus1 10)
  print (plus1 20)
  print (plus 2 3)
  print (mal4 5)
  print (mal 2 5)
