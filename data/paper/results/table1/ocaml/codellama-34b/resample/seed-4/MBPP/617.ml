(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
let rec min_Jumps (steps :  int * int) (d : int) : float = 
    let (x, y) = steps in 
    if x == d && y == 0.0 then 0.0 (* if in goal state, return 0.0 *)
    else if x < 0 || y < 0 then Float.infinity (* if out of bounds, return infinity *)
    else 1.0 + 
          (min (min_Jumps (x-1, y) d) 
               (min_Jumps (x, y-1) d)) 

