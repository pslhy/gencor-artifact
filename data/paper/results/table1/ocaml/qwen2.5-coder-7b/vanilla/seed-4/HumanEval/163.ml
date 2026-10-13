let rec generate_integers (a : int) (b : int) : int list = 
  let rec filter_even (n : int) : bool =
    if n mod 2 = 0 then true else false
  in
  let rec generate (start : int) (end_ : int) : int list =
    if start > end_ then []
    else if filter_even start then start :: generate (start + 1) end_
    else generate (start + 1) end_
  in
  if a <= b then generate (max a 2) b else generate (max b 2) a


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
