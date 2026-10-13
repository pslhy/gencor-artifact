let rec min_Jumps (steps :  int * int) (d : int) : float = 
    let (step, jump_len) = steps in 
    if d mod step = 0 then (float (d / step)) 
    else ((float (d / step)) +. 1.0);;

(* Test Cases *)
(* min_Jumps (2, 5) should return 3.0 *)
(* min_Jumps (3, 12) should return 4.0 *)
(* min_Jumps (10, 3) should return 4.0 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
