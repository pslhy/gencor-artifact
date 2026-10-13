let rec move_num (test_str : string) : string =
    let is_num = function '0' .. '9' -> true | _ -> false in
    let rec move_num_left start_idx curr_idx =
        if curr_idx >= String.length test_str then test_str else
        if is_num test_str.[curr_idx] then
            let num_str =
                let rec get_num_len curr_idx =
                    if curr_idx >= String.length test_str || not (is_num test_str.[curr_idx]) then
                        curr_idx - start_idx
                    else get_num_len (curr_idx + 1) in
                let num_len = get_num_len (curr_idx + 1) in
                String.sub test_str (start_idx) num_len in
            let num_len = String.length num_str in
            num_str ^
            (String.sub test_str (start_idx + num_len)
                (String.length test_str - (start_idx + num_len)))
        else (String.sub test_str 0 curr_idx) ^
            (move_num_left (start_idx + 1) (curr_idx + 1))
    in
    move_num_left 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
