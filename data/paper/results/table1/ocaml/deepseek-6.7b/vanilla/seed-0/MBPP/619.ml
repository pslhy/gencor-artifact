let rec move_num (test_str : string) : string =
    let rec loop i new_str num_str =
        if i < String.length test_str then
            let c = test_str.[i] in
            if '0' <= c && c <= '9' then
                loop (i+1) new_str (num_str ^ Char.escaped c)
            else
                loop (i+1) (new_str ^ Char.escaped c) num_str
        else
            new_str ^ num_str
    in loop 0 "" "";;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to move all the numbers to the end of the given string. *)
