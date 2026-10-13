
let rec generate_integers (a : int) (b : int) : int list =
  if a > b then generate_integers b a
  else if a = b then if a mod 2 = 0 then [a] else []
  else if a < b then
    if a mod 2 = 0 then a :: generate_integers (a + 2) b
    else generate_integers (a + 1) b
;;

generate_integers 2 8;;
generate_integers 8 2;;
generate_integers 10 14;;

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
