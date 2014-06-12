-- # 01 Display
--
-- Das hier ist ein Beispielprogramm, das zeigt, wie man
-- mit Code einfache Bilder auf den Bildschirm malen kann.
--
-- Um zu sehen, was das Programm tut, starte es einmal,
-- bevor du weiterliest:
--
-- ./run 01-Display.hs
--
-- Wir verwenden die Library `Graphics.Gloss`, um Bilder
-- zu malen. Eine Library ist ein Stück Code, dass ein_e
-- Programmierer_in geschrieben hat, um es anderen einfacher
-- zu machen, interessante Programme zu schreiben.
-- Leute, die beruflich programmieren, verwenden regelmäßig
-- Libraries.
import Graphics.Gloss

kreis1 = circle 100
-- `circle` ist eine Funktion, die in `Graphics.Gloss`
-- definiert ist. Um herauszufinden, welchen Typ sie hat,
-- kannst du die interaktive Haskell-Konsole fragen:
--
-- ghci 01-Display.hs
-- *Main> :info circle
-- circle :: Float -> Picture
--         -- Defined in `Graphics.Gloss.Data.Picture'
--
-- `circle` nimmt also einen Wert vom Typ Float und gibt
-- einen Wert von Typ `Picture` zurück.
-- Wenn du mehr über den Typ `Picture` wissen willst,
-- kannst du auch die Konsole fragen:
--
-- *Main> :info Picture
-- ...
--
-- data Picture
--   = Blank
--   | Polygon Path
--   | Line Path
--   | Circle Float
--   ...
--
-- Aha! `Picture` ist also so etwas ähnliches wie unsere
-- selbstdefinierten Typen `Zustand` und `Paar`, nur eben
-- für Bilder, oder geometrische Figuren.
--
-- Zurück zur Definition von `kreis1`: Welchen Typ hat `kreis1`?

-- # Verschieben
--
-- `kreis1` wird genau in der Mitte des Bildschirms gemalt.
-- Um Figuren zu verschieben, gibt es die Funktion `translate`.
-- Sie hat den folgenden Typ:
--
-- translate :: Float -> Float -> Picture -> Picture
--
-- Man gibt ihr also zwei Zahlen und ein Bild, und bekommt
-- ein Bild zurück:
kreis2 = translate 20 20 kreis1

-- # Farbe
--
-- Man kann einem Kreis auch eine andere Farbe geben:
kreis3 = color red kreis1

-- Und da `color` ein `Picture` zurückgibt, kann
-- man die beiden Funktionen kombinieren:
kreis4 = translate 40 30 (color red kreis2)

-- # Hauptprogramm
--
-- In `Graphics.Gloss` gibt es eine Funktion `display`,
-- mit der man Bilder auf dem Bildschirm anzeigen kann.
main = display bildschirm hintergrund
  (pictures
    [ kreis1
    , kreis3
    ]
  )

bildschirm = FullScreen (320, 200)
hintergrund = white
