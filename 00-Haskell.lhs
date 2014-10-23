-- # 00 Haskell
--
-- Haskell ist eine Programmiersprache, benannt nach dem
-- Mathematiker Haskell Curry. Die Sprache wird von vielen
-- Firmen verwendet, unter anderem Facebook.
--
-- ## Definitionen, Variablen
--
-- Ein Haskell-Programm ist eine Liste von Definitionen,
-- die miteinander zusammenhängen. Hier sind ein paar
-- Beispiele für Definitionen:

zahl = 2
zahlMal3 = zahl * 3

-- `zahl` und `zahlMal3` nennt man Variablen. Eine Variable
-- kann nur einmal definiert werden und ändert sich danach
-- nicht.

-- ## Funktionen
--
-- Hier ist ein Beispiel für eine Funktion:

mal a b = a * b

-- Und so sieht es aus, wenn man die Funktion verwendet:

c = mal 3 2

-- `c` hat jetzt den Wert 6.
--
-- `a` und `b` nennt man Parameter. Den Namen
-- von Parametern kann man beliebig auswählen.
--
-- `mal` ist eine Funktion, die zwei Zahlen annimmt und
-- eine Zahl zurückgibt. In Haskell kann man diesen selben
-- Satz so ausdrücken:

mal :: Int -> Int -> Int

-- So eine Zeile nennt man Typensignatur. `Int` ist ein Typ,
-- der nur Werte erlaubt, die Zahlen sind. Also Wörter gehen
-- zum Beispiel nicht.
--
-- `Int -> Int` ist auch ein Typ. Es ist der Typ von
-- Funktionen, die eine Zahl annehmen und eine Zahl
-- zurückgeben.
--
-- # Currying
--
-- Man muss die Parameter für eine Funktion nicht unbedingt
-- alle auf einmal übergeben. Die folgende Funktion belegt
-- zum Beispiel nur den ersten Parameter von `mal` und lässt
-- den zweiten offen:

mal5 :: Int -> Int
mal5 = mal 5

-- Typen muss man nicht unbedingt ausschreiben, aber wenn
-- man den Typ kennt, ist es oft gut ihn einfach
-- hinzuschreiben, damit Haskell überprüfen kann, ob
-- es irgendwelche Widersprüche gibt.
--
-- # Eigene Typen
--
-- Man kann auch seine eigenen Typen definieren:

data Zustand = An | Aus

-- Und so kann man diesen Typ verwenden:

schalten :: Zustand -> Zustand
schalten (An)  = Aus
schalten (Aus) = An

-- Hier ist noch ein Beispiel. Diesmal ist es ein
-- Typ, dem man Werte mitgeben kann:

data Paar = Paar Int Int

xy = Paar 1 2

-- Eigene Typen sind eine ziemlich tolle Sache.
-- Wir werden irgendwann später nochmal auf sie
-- zurückkommen.
--
-- # Hauptprogramm
--
-- Definitionen schreiben nichts auf den Bildschirm. Um
-- etwas sehen zu können, braucht man ein Hauptprogramm
-- und Ausgabebefehle.

main = do
  print zahl
  print (mal5 3)
  print (mal 6 2)
  putStrLn (show 123)
  putStrLn ("hallo" ++ " du da")
  putStrLn ("zahl: " ++ (show zahl))
