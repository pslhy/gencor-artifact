
let rec is_nested (string : string) : bool = 
  let rec helper (chars : char list) (depth : int) (has_nested : bool) : bool =
    match chars with
    | [] -> has_nested && depth > 0
    | '[' :: rest ->
        if depth > 0 then helper rest (depth + 1) true
        else helper rest 1 true
    | ']' :: rest -> 
        if depth > 0 then helper rest (depth - 1) true
        else helper rest 0 false
    | _ -> helper chars depth has_nested
  in
  helper (List.of_seq (String.to_seq string)) 0 false

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
