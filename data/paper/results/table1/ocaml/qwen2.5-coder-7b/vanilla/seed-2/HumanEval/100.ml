let rec make_a_pile (n : int) : int list = 
  let next_number x = if x mod 2 = 0 then x + 2 else x + 1 in
  let rec generate_list current n acc =
    if n <= 0 then acc
    else generate_list (next_number current) (n - 1) (current :: acc)
  in
  List.rev (generate_list n n [])

let make_a_pile n = make_a_pile n


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
