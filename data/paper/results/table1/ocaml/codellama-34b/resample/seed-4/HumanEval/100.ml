(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec make_a_pile (n : int) : int list = 
    match n with
    | 1 -> [1]
    | _ -> let stones = make_a_pile (n - 1)
          if n mod 2 = 0 then stones @ [stones.Length + 1]
          else stones @ [stones.Length + 2]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_a_pile (n : int) : int list = 
    match n with 
    | 1 -> [1] 
    | _ -> let stones = make_a_pile (n - 1)
      in if n mod 2 = 0 
         then stones @ [stones.Length + 1] 
         else stones @ [stones.Length + 2]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:39: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec make_a_pile (n : int) : int list = 
    match n with 
    | 1 -> [1] 
    | _ -> let stones = make_a_pile (n - 1)
      in if n mod 2 = 0 
         then stones @ [stones.length + 1]
         else stones @ [stones.length + 2]

