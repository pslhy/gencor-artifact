let rec median_numbers (a : int) (b : int) (c : int) : float =
  if a < b
  then if b < c
    then b
    else if a < c
      then c
      else a
  else if a < c
    then if b < c
      then b
      else c
    else a


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
