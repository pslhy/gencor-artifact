let rec is_nested (string : string) : bool = 
    let rec helper chars count in_nested = 
        match chars with
        | [] -> in_nested && count > 0
        | '[' :: rest -> helper rest (count + 1) true
        | ']' :: rest -> 
            if count > 0 then helper rest (count - 1) in_nested else false
        | _ -> false
    in
    helper (List.of_string string) 0 false


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
