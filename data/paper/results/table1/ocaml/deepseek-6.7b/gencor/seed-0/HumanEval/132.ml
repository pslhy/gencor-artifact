
let rec is_nested (string : string) : bool =
    let rec check_array (array : char list) =
        match array with 
        | [] -> false
        | ']' :: t -> List.mem '[' t
        | _ :: t -> check_array t
    in

    let rec check_string (s : string) =
        if String.contains s '[' || String.contains s ']' then
            let open_br = String.sub s 0 (String.index_from s 0 '[') in
            let close_br = String.sub s (String.index_from s 0 ']') (String.length s - String.index_from s 0 ']') in
                if (check_array (List.of_seq @@ String.to_seq open_br)) && (check_array (List.of_seq @@ String.to_seq close_br)) then
                    true
                else false
        else false
    in
    if String.contains string '[' || String.contains string ']' then
        if check_string string then true
        else false
    else true

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
