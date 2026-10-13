let rec make_a_pile (n : int) : int list =
    if n < 1 then []
    else
        let next_number = if n mod 2 = 0 then n + 2 else n + 1 in
        n :: make_a_pile next_number


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
