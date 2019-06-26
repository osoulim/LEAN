-- ∀x A(x) -> (∀x B(x) -> ∀y(A(y) ∧ B(y)))

variable U: Type
variables A B: U -> Prop 

example : (∀ x, A x) -> (∀ x, B x) -> (∀ x, A x ∧ B x) :=
assume hA:  ∀ x, A x,
assume hB:  ∀ x, B x,
assume y,
have pAy: A y, from hA y,
have pBy: B y, from hB y,
show A y ∧ B y, from and.intro pAy pBy 