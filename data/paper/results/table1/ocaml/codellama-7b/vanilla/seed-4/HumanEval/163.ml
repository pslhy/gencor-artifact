let rec generate_integers (a : int) (b : int) : int list =
  if a > b then
    []
  else
    let next_a = a + 1 in
    let next_b = b - 1 in
    if next_a mod 2 = 0 then
      next_a :: generate_integers next_a next_b
    else
      generate_integers next_a next_b


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given two positive integers a and b, return the even digits between a *)
(*     and b, in ascending order. *)
(*     For example: *)
(*     >>> generate_integers 2 8 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 8 2 *)
(*     [2; 4; 6; 8] *)
(*     >>> generate_integers 10 14 *)
(*     [] *)
