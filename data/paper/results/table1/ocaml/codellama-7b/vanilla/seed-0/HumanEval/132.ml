let rec is_nested (string : string) : bool =
  match string with
  | "" -> false
  | _ ->
    let rec find_match (idx : int) (nesting_level : int) : int option =
      if idx >= String.length string then None else
        match string.[idx] with
        | '[' -> find_match (idx + 1) (nesting_level + 1)
        | ']' ->
          if nesting_level <= 0 then None else
            find_match (idx + 1) (nesting_level - 1)
        | _ -> find_match (idx + 1) nesting_level
    in
    match find_match 0 0 with
    | Some _ -> true
    | None -> false
;;


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
