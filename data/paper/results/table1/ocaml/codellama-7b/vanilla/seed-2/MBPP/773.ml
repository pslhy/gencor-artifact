let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
    match String.index_opt text pattern ~pos:0 with
    | None -> None
    | Some pos -> let (before, after) = String.split_at text pos in
                let (matched, remaining) = String.split_at after (String.length pattern) in
                let length = String.length before in
                    (matched, length, Some pos)
    in occurance_substring text pattern


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
