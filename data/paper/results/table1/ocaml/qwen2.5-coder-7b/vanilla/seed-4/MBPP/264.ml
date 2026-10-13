let rec dog_age (h_age : int) : int = 
  match h_age with
  | 0 -> 0
  | 1 -> 10
  | 2 -> 20
  | _ -> 20 + (h_age - 2) * 4


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate a dog's age in dog's years. *)
