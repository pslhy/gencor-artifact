let rec generate_integers (a : int) (b : int) : int list = 
  let rec helper x acc = 
    if x > b then acc
    else if x mod 2 = 0 then helper (x + 1) (x :: acc)
    else helper (x + 1) acc
  in
  if a <= b then List.rev (helper a [])
  else List.rev (helper b [])


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
