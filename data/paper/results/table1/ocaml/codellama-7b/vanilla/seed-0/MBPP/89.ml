let rec closest_num (n : int) : int =
  if n = 1 then 1
  else if n = 2 then 1
  else if n = 3 then 2
  else
    let n_int = int_of_float (float_of_int n) in
    let n_frac = float_of_int (n_int mod 10) in
    if (float_of_int (n_int - 1) +. n_frac) < float_of_int n then closest_num (n_int - 1)
    else n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the closest smaller number than n. *)
