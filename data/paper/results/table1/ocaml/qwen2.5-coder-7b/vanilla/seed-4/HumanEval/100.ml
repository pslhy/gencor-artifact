let rec make_a_pile (n : int) : int list = 
  let rec helper (level : int) (current_stones : int) (result : int list) : int list =
    if level <= 0 then result
    else helper (level - 1) (if current_stones mod 2 = 0 then current_stones + 1 else current_stones + 2) (current_stones :: result)
  in
  List.rev (helper n n [])


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a positive integer n, you have to make a pile of n levels of stones. *)
(*     The first level has n stones. *)
(*     The number of stones in the next level is: *)
(*     - the next odd number if n is odd. *)
(*     - the next even number if n is even. *)
(*     Return the number of stones in each level in a list, where element at index *)
(*     i represents the number of stones in the level (i+1). *)
(*     Examples: *)
(*     >>> make_a_pile 3 *)
(*     [3; 5; 7] *)
