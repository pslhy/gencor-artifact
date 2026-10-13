let rec min_Jumps (steps :  int * int) (d : int) : float = 
    (* terminate case: destination reached with minimum jumps *) 
    if steps = (d, 0) then 0 
    (* terminating case: incomplete path exceeds maximum hops *) 
    elif abs steps.(d) < d then Float.infinity
    (* calculate the minimum number of jumps required to reach destination *) 
    else min (min_Jumps steps (d-1)) (min_Jumps steps d))

let result = min_jumps (10,0) 4


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
