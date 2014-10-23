> import Graphics.Gloss
>
> bildschirm = FullScreen (320, 200)
> hintergrund = white

> einKreis :: Picture
> einKreis = color red (circle 100)

Aufgabe 1

> kreis :: Float -> Picture
> kreis radius = circle radius

Aufgabe 2

> kreisXY :: Float -> Int -> Int -> Picture
> kreisXY radius x y = undefined

Aufgabe 3

> kreisXYFarbe :: Float -> Int -> Int -> Color -> Picture
> kreisXYFarbe radius x y farbe = undefined

> main = display bildschirm hintergrund (pictures
>   [ einKreis
>   , kreis 20
>   , kreis 30
>   ])
