{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
module P (
  -- * Primitive types
  -- ** Bool
    Bool (..)
  , bool
  , (&&)
  , (||)
  , not
  , otherwise
  -- ** Char
  , Char
  -- ** Int
  , Int
  , Int8
  , Int16
  , Int32
  , Int64

  -- * Algebraic structures
  -- ** Semigroup
  , Semigroup (..)
  -- ** Monoid
  , Monoid (..)
  -- ** Functor
  , Functor (..)
  -- ** Bifunctor
  , Bifunctor (..)
  -- ** Applicative
  , Applicative (..)
  -- ** Monad
  , Monad (..)

  -- * Data structures
  -- ** Either
  , Either (..)
  -- ** Maybe
  , Maybe (..)
  -- ** Tuple
  , fst
  , snd
  , curry
  , uncurry

  -- * Typeclasses
  -- ** Enum
  , Enum (..)
  -- ** Eq
  , Eq (..)
  -- ** Foldable
  , Foldable (..)
  -- ** Ord
  , Ord (..)
  , Ordering (..)
  , comparing
  -- ** Traversable
  , Traversable (..)

  -- * Combinators
  , id
  , (.)
  , ($)
  , (&)
  , const
  , flip
  , fix
  , on

  -- * System
  -- ** IO
  , IO
  , FilePath

  -- * Partial functions
  , undefined
  , error

  -- * Debugging facilities
  , trace
  , traceM
  , traceIO
  ) where


import           Control.Monad as Monad (
           Monad (..)
         )
import           Control.Applicative as Applicative (
           Applicative (..)
         )

import           Data.Bifunctor as Bifunctor (
           Bifunctor (..)
         )
import           Data.Bool as Bool (
           Bool (..)
         , bool
         , (&&)
         , (||)
         , not
         , otherwise
         )
import           Data.Char as Char (
           Char
         )
import           Data.Either as Either (
           Either (..)
         )
import           Data.Foldable as Foldable (
           Foldable (..)
         )
import           Data.Function as Function (
           id
         , (.)
         , ($)
         , (&)
         , const
         , flip 
         , fix
         , on
         )
import           Data.Functor as Functor (
           Functor (..)
         )
import           Data.Eq as Eq (
           Eq (..)
         )
import           Data.Int as Int (
           Int
         , Int8
         , Int16
         , Int32
         , Int64
         )
import           Data.Maybe as Maybe (
           Maybe (..)
         )
import           Data.Monoid as Monoid (
           Monoid (..)
         )
import           Data.Ord as Ord (
           Ord (..)
         , Ordering (..)
         , comparing
         )
import           Data.Semigroup as Semigroup (
           Semigroup (..)
         )
import           Data.Traversable as Traversable (
           Traversable (..)
         )
import           Data.Tuple as Tuple (
           fst
         , snd
         , curry
         , uncurry
         )

import qualified Debug.Trace as Trace

import           Prelude as Prelude (
           Enum (..)
         )
import qualified Prelude as Unsafe

import           System.IO as IO (
           FilePath
         , IO
         )


undefined :: a
undefined =
  Unsafe.undefined
{-# WARNING undefined "'undefined' is unsafe" #-}

error :: [Char] -> a
error =
  Unsafe.error
{-# WARNING error "'error' is unsafe" #-}

trace :: [Char] -> a -> a
trace =
  Trace.trace
{-# WARNING trace "'trace' should only be used while debugging" #-}

traceM :: Applicative f => [Char] -> f ()
traceM =
  Trace.traceM
{-# WARNING traceM "'traceM' should only be used while debugging" #-}

traceIO :: [Char] -> IO ()
traceIO =
  Trace.traceIO
{-# WARNING traceIO "'traceIO' should only be used while debugging" #-}