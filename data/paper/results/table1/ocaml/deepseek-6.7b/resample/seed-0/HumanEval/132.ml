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
                if (check_array (List.of_string open_br) || check_array (List.of_string close_br)) &&
                    String.length open_br <= String.length close_br then
                    true
                else false
        else false
    in
    if String.contains string '[' || String.contains string ']' then check_string string else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:34: Unbound value "List.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
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
                if (check_array (String.to_list open_br) || check_array (String.to_list close_br)) &&
                    String.length open_br <= String.length close_br then
                    true
                else false
        else false
    in
    if String.contains string '[' || String.contains string ']' then check_string string else false

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:34: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_nested (string : string) : bool =
    let rec check_sequence (s : string) (ch1 : char) (ch2 : char) : bool =
        try 
            let start_pos = String.index_from s 0 ch1 in
            let end_pos = String.index_from s start_pos ch2 in
                if start_pos < end_pos then 
                    true
                else 
                    false
        with
        | Not_found -> false
    in

    let rec check_string (s : string) : bool =
        if String.contains s '[' || String.contains s ']' then
            check_sequence s '[' ']' || check_sequence s ']' '[' || check_string (String.sub s 0 (String.index_from_end s 0 ']'))
        else
            false
    in
    check_string string

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:16:99: Unbound value "String.index_from_end" *)
(*     Hint: Did you mean "index_from_opt"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_nested (string : string) : bool =
    let rec check_sequence (s : string) (ch1 : char) (ch2 : char) : bool =
        try 
            let start_pos = String.index_from_opt s 0 ch1 in
            let end_pos = String.index_from_opt s 0 ch2 in
            match start_pos, end_pos with
            | Some sp, Some ep when sp < ep -> true
            | _ -> false
        with
        | Not_found -> false
    in

    let rec check_string (s : string) : bool =
        if String.contains s '[' || String.contains s ']' then
            check_sequence s '[' ']' || check_sequence s ']' '[' || check_string (String.sub s 0 (String.index_from_opt s 0 ']' |> Option.get))
        else
            false
    in
    check_string string

