
let rec is_nested (string : string) : bool = 
  let rec helper (stack : char list) (last : char option) : bool = 
    match string, stack, last with
    | "", [], _ -> false
    | "", _, Some('_') -> true
    | "", _, _ -> false
    | synt, [], None -> helper [] (Some synt)
    | synt, [x], Some('_') when x = synt -> helper [] (Some synt)
    | synt, _ , Some(_) -> helper [] (Some synt)
    | synt, _ :: _ , None -> helper [] (Some synt)
    | synt, _ :: x, Some(y) when synt = y -> helper x (Some synt)
    | synt, x, Some(y) -> helper x (Some synt)   
  in
  helper [] None

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Create a function that takes a string as input which contains only square brackets. *)
(*     The function should return true if and only if there is a valid subsequence of brackets *)
(*     where at least one bracket in the subsequence is nested. *)
(*     >>> is_nested "[[]]" *)
(*     true *)
(*     >>> is_nested "[]]]]]]][[[[[]" *)
(*     false *)
(*     >>> is_nested "[][]" *)
(*     false *)
(*     >>> is_nested "[]" *)
(*     false *)
(*     >>> is_nested "[[][]]" *)
(*     true *)
(*     >>> is_nested "[[]][[" *)
(*     true *)
