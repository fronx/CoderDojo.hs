> import Graphics.Gloss
>
> bildschirm :: Display
> bildschirm = FullScreen (320, 200)
>
> hintergrund :: Color
> hintergrund = white
>
> kreis1 :: Picture
> kreis1 = circle 100
>
> kreis2 :: Picture
> kreis2 = translate 40 30 (color red kreis1)
>
> main :: IO ()
> main = display bildschirm hintergrund
>   (pictures
>     [ kreis1
>     , kreis2
>     ]
>   )
