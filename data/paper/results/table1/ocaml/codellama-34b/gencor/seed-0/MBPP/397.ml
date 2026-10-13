
let rec median_numbers (a : int) (b : int) (c : int) : float =
  if (a <= b) && (b <= c) then (b |> int_of_float)
  else if (a <= c) && (c <= b) then (c |> int_of_float)
  else if (b <= a) && (a <= c) then (a |> int_of_float)
  else (b |> int_of_float)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
