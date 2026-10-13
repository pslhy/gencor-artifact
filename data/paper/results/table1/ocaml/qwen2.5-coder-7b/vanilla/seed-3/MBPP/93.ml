let rec power (a : int) (b : int) : int = match b with
    0 -> 1
  | _ -> a * power a (b - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the value of 'a' to the power 'b'. *)
