let rec checks (n : int) : bool =
  if n = 0 then false
  else if n = (n |> int_of_string |> string_of_int) then true
  else checks n |> float_of_int |> ( * ) 0.1 |> int_of_float |> checks


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if a given number is one less than twice its reverse. *)
