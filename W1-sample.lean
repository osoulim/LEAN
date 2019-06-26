constant a : ℕ 
constants c b: nat 
constant f : Type
constant g : f
constant e : bool

#check 132
#check e && e

constant func : nat -> (nat -> nat)
constant func1 : nat -> nat -> nat

#check func
#check func1

constants α β : Type
constant F : Type -> bool

def double (x : nat) : nat := x + x

#print double
#check double 3
#reduce double 5 

def sum1 (x: nat) (y: nat) : nat := x + y

#check sum1
#reduce sum1 5 4