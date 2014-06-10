import Graphics.Gloss

bildschirm = FullScreen (320, 200)
hintergrund = white

kreis1 = circle 100
kreis2 = translate 40 30 (color red kreis1)

main = display bildschirm hintergrund
  (pictures
    [ kreis1
    , kreis2
    ]
  )
