let rec occurance_substring (text : string) (pattern : string) :  string * int * int option = 
    (* base case: if the pattern is empty, there is no occurrence *)
    if pattern = "" then
        ("", 0, None)

    (* recursive case: find the first occurrence of the pattern in the text *)
    else
        let i, j, k = 
            (* recursion step: find the first occurrence of the pattern in the text *)
            search_pattern text pattern 0 (String.length text) 0 in

        (* result: the substring, its position, and the optional index of the end of the match *)
        match k with
        | Some k ->
            let substring = String.sub text i (j - i) in
            let position = (i, j) in
            (substring, position, Some (k - 1))
        | None ->
            ("", 0, None)

and search_pattern (text : string) (pattern : string) (i : int) (j : int) (k : int) : int * int * int option =
    (* base case: if the pattern has been fully matched, set the end index *)
    if k = String.length pattern then
        (i, j, Some k)

    (* recursive case: find the next occurrence of the pattern in the text *)
    else
        let x = String.index_from text i (Char.escaped pattern[k]) in

        (* recursion step: find the next occurrence of the pattern in the text *)
        search_pattern text pattern x (x + 1) (k + 1)
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
