let rec get_ludic (n : int) : int list =
  if n < 2 then
    []
  else
    let previous = get_ludic (n - 1) in
    let next = 2 * previous.[0] + 1 in
    if next <= n then
      next :: previous
    else
      previous
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get all lucid numbers smaller than or equal to a given integer. *)
