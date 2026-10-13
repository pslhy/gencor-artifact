let rec min_Jumps (steps :  int * int) (d : int) : float =
    let (a, b) = steps
    if a >= d && b = 0 then 0.
    else if a >= d - 1 && b = 0 then 1.
    else min_Jumps (a - 1, b + 1) + min_Jumps (a - 1, b - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
