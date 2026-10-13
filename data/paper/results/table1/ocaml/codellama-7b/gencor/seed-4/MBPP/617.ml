
let rec min_Jumps (steps :  int * int) (d : int) : float = 
    (* terminate case: destination reached with minimum jumps *) 
    if steps = (d, 0) then 0 
    (* terminating case: incomplete path exceeds maximum hops *) 
    else if abs steps.(0) < d then raise (Invalid_argument 
    "Insufficient steps to reach destination") 
     else min_Jumps (steps.(0, 0) - 1) d 
    + min_Jumps (steps.(0, 1) - 1) d 
    (* divide and conquer: recursive case *) 
    + min_Jumps (steps.(1, 0) - 1) d 
    + min_Jumps (steps.(1, 1) - 1) d + abs steps.(0)
 ;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
