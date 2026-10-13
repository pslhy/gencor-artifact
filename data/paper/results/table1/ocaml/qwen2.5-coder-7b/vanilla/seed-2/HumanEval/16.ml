let rec count_distinct_characters (string : string) : int = 
    let rec helper chars (seen : bool array) : int = 
        match chars with
        | [] -> 0
        | h::t -> 
            let index = Char.code (Char.lowercase h) - Char.code 'a' in
            if seen.(index) then
                helper t seen
            else
                helper t (seen updated_at index true) + 1
    in
    let seen = Array.make 26 false in
    helper (List.of_seq (String.to_seq string)) seen


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string, find out how many distinct characters (regardless of case) does it consist of *)
(*     >>> count_distinct_characters "xyzXYZ" *)
(*     3 *)
(*     >>> count_distinct_characters "Jerry" *)
(*     4 *)
