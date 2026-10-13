let rec median_numbers (a : int) (b : int) (c : int) : float =
  if a < b then
    if b < c then median_numbers b c a
    else if a < c then median_numbers a c b
    else (a +. b +. c) /. 3.
  else if a < c then
    if b < c then median_numbers b a c
    else if a < c then median_numbers a c b
    else (a +. b +. c) /. 3.
  else if b < c then median_numbers c a b
  else (a +. b +. c) /. 3.


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
