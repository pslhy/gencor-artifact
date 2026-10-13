let rec perimeter_pentagon (a : int) : int =
  if a <= 0 then invalid_arg "Side length can't be zero or negative!"
  else a * 5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the perimeter of a regular pentagon from the length of its sides. *)
