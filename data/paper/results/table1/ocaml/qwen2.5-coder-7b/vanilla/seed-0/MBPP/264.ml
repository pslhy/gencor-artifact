let rec dog_age (h_age : int) : int = 
  if h_age < 0 then invalid_arg "Negative human age"
  else if h_age <= 2 then h_age * 10
  else (2 * 10) + (h_age - 2) * 4


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate a dog's age in dog's years. *)
