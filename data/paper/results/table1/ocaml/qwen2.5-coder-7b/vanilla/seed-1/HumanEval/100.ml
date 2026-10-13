let rec make_a_pile (n : int) : int list = 
  let rec next_num (current : int) (is_odd : bool) : int = 
    if is_odd then current + 2 else current + 1 
  in
  let rec build_pile (remaining : int) (current : int) (level : int) (acc : int list) : int list = 
    if remaining <= 0 then acc 
    else 
      let next = next_num current (current mod 2 <> 0) in
      build_pile (remaining - 1) next (level + 1) (next :: acc) 
  in
  List.rev (build_pile n n 0 [])


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
