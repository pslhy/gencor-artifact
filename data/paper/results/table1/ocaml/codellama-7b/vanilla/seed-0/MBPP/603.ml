let rec get_ludic (n : int) : int list =
  if n = 1 then [1]
  else
    let ludic = get_ludic (n - 1) in
    let ludic = n :: ludic in
    ludic

and is_lucid (n : int) : bool =
  let ludic = get_ludic (int_of_float (ceil (sqrt (2.0 *. log10 (float_of_int n))))) in
  let sum = List.fold_left (+) 0 ludic in
  n = sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
