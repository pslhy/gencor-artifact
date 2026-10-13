let rec is_Diff (n : int) : bool = 
    let abs_diff = abs (n mod 11) in
    if abs_diff = 0 then
        true
    else
        is_Diff abs_diff

let is_divisible_by_11 n = 
    is_Diff n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find whether a number is divisible by 11. *)
