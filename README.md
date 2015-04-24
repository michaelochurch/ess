# ess
A type-level S Combinator for Haskell. 

I will be deeply impressed if anyone finds a use for this.

Why does it exist? We have a type-level I combinator in the Identity monad.

```newtype Identity a = Identity {runIdentity :: a}```

We also have a type-level K combinator in the Const functor.

```newtype Const a b = Const {getConst :: a}```

But where is our S combinator? More importantly, is it useful at all? This
repository exists, because I want to know. 