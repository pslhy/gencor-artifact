
let rec find_literals (text : string) (pattern : string) :  string * int * int = 
    (*
     * Finds all the occurrences of the given pattern in the text and returns a 
     * list of the matching substrings, and the indexes where they were found. 
     *)

    let text_len = String.length text in
    let pattern_len = String.length pattern in

    let rec find_next_match (start_idx : int) (end_idx : int) : option * int * int = 
        (*
         * Finds the next occurrence of the given pattern in the text that is 
         * after the given start index
         *)

        if start_idx + pattern_len <= text_len then
            let found_idx = String.index text start_idx pattern in
            if found_idx <> -1 then
                (Some pattern, found_idx, found_idx + pattern_len)
            else
                (None, start_idx + 1, pattern_len)
        else
            (None, start_idx, pattern_len) in

    let rec aux (found_idxs : (int * int) list) (start_idx : int) : (string * int * int) list = 
        (*
         * Helper function to find all occurrences of the pattern in the text
         *)

        match find_next_match start_idx with
        | None, _, _ -> found_idxs
        | Some substring, start, end_idx ->
            aux ((start_idx, found_idxs)::found_idxs) (start_idx + 1) in

    aux [] 0

let () =
    let text = "Hello, world!" in
    let pattern = "world" in
    match find_literals text pattern with
    | None -> print_string "No match found."
    | Some substring, start, end_idx ->
        print_string "Found matching substring ";
        print_string ("\"" ^ (String.sub text (Some (Some text)) ^ String.sub pattern (Some (Some pattern)) ^ "\" at indexes " ^ string_of_int (Some (Some text)) ^ " and " ^ string_of_int (Some (Some pattern)) ^ "\n"))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
