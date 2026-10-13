(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Create a function that takes 3 numbers. *)
(*     Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers. *)
(*     Returns false in any other cases. *)
(*     Examples *)
(*     >>> any_int 5 2 7 *)
(*     true *)
(*     >>> any_int 3 2 2 *)
(*     false *)
(*     >>> any_int 3 (-2) 1 *)
(*     true *)
(*     >>> any_int 3.6 -2.2 2 *)
(*     false *)
let rec any_int (x : float) (y : float) (z : float) : bool =
    let equal_sum a b c =
        if a = b + c || b = a + c || c = a + b then true
        else false
    in
    if equal_sum x y z then true
    else false

