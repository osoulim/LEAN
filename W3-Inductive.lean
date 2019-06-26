inductive List (α : Type) : Type
| nil : List
| cons : α -> List -> List

notation `[]`  := List.nil _
notation a ` :: ` l := List.cons a l 

def map {α β} ( f: α -> β ) : List α -> List β  
| [] := []
| (a :: l) :=  f a :: map l  

def length {α} : List α -> ℕ 
| [] := 0
| (a :: l) := length l + 1


inductive Props: Type
| atom : Props
| and : Props -> Props -> Props
| or : Props -> Props -> Props
| arrow: Props -> Props -> Props
| not: Props -> Props

