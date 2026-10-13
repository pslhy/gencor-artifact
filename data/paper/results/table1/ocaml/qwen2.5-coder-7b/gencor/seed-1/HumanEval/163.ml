
let rec generate_integers (a : int) (b : int) : int list = 
  let rec collect_even acc = function
    | x when x > b -> List.rev acc
    | x when x mod 2 = 0 -> collect_even (x :: acc) (x + 1)
    | _ -> collect_even acc (min (b + 1) (a + 1))
  in
  if a <= b then collect_even [] a else collect_even [] b

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
