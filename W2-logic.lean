def P := 0 = 0
def Q := 1 = 1
#check Q

lemma proofP : P := eq.refl 0
lemma proofQ : Q := sorry

theorem and1 : P ∧ Q 
    := and.intro proofP proofQ
#check and1 
#check and.intro proofQ proofP

theorem pfPQ : P ∧ Q :=
begin
    apply and.intro,
    exact eq.refl 0,
    exact eq.refl 1
end

theorem pfPQ' : P ∧ Q :=
begin 
    have A := eq.refl 0,
    have B := eq.refl 1,
    apply and.intro A B
end 

#check and.right pfPQ

axiom f : false
#check f

theorem zeroEqualToOne : "" = "asghar" := false.elim f
#check zeroEqualToOne

theorem pfPnP : P ∧ ¬P := sorry
#check pfPnP

theorem pfParrQ : P ∧ ¬P -> false := sorry

#check pfParrQ pfPnP

