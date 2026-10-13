let rec count_distinct_characters (string : string) : int = 
    let uppercase_string = String.uppercase string in
    let current_char = Char.char_of_int 0 in
    let rec loop count = 
        if uppercase_string = "" then
            count
        else 
            let next_char = String.get uppercase_string 0 in
            if current_char <> next_char then
                loop (count + 1)
            else 
                loop count
    in
    loop 0


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
