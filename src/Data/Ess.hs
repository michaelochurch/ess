{-# LANGUAGE KindSignatures #-}

module Data.Ess where

newtype Ess (x :: * -> * -> *) (y :: * -> *) (z :: *) = Ess {runEss :: x z (y z)}
