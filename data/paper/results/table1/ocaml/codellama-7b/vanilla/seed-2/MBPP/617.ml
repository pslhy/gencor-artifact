let rec min_Jumps (steps :  int * int) (d : int) : float =
    match steps with
    | (0, 0) -> 0.0
    | (d, 0) -> 0.0
    | step ->
    let (a, b) = step in
    let x' = d - a in
    let y' = b in
    let cost = x' * x' in
    cost /. min_Jumps (a, b) (d+1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
