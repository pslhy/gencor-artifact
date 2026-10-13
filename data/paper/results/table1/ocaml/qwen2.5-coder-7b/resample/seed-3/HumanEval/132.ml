(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec is_nested (string : string) : bool = 
  let rec helper (stack : char list) (last : char option) : bool = 
    match string, stack, last with
    | "", [], _ -> false
    | "", _, Some('_') -> true
    | "", _, _ -> false
    | synt, [], None -> helper [] (Some synt)
    | synt, ['],'], Some '[' -> helper [] (Some synt)
    | synt, x::y, Some '[' -> helper (synt::x::y) (Some ']')
    | synt, x::y, Some ',' -> helper (synt::x::y) (Some ',')
    | _ -> false
  in helper [] None

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:14: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_nested (string : string) : bool = 
  let rec helper (stack : char list) (last : char option) : bool = 
    match string, stack, last with
    | "", [], _ -> false
    | "", _, Some '_' -> true
    | "", _, _ -> false
    | synt, [], None -> helper [] (Some synt)
    | synt, [']'], Some '[' -> helper [] (Some synt)
    | synt, x::y, Some '[' -> helper (synt::x::y) (Some ']')
    | synt, x::y, Some ',' -> helper (synt::x::y) (Some ',')
    | _ -> false
  in helper [] None

