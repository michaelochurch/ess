module Data.Ess.Examples where

import Data.Ess

enlist :: Ess (->) [] Int
enlist = Ess return

-- λ> enlist `runEss` 5
-- [5]

censor :: String -> Ess Either Maybe String
censor s =
  case s of
  "badword"  -> (Ess . Right) Nothing
  "sinister" -> (Ess . Left) s
  _          -> (Ess . Right . Just) s

-- λ> runEss $ censor "sinister"
-- Left "sinister"
-- λ> runEss $ censor "S"
-- Right (Just "S")
