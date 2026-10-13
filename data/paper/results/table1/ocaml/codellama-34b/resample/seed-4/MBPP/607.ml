(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int = 
    (*
     * Finds all the occurrences of the given pattern in the text and returns a 
     * list of the matching substrings, and the indexes where they were found. 
     *)

    let text_len = String.length text in
    let pattern_len = String.length pattern in

    let rec find_next_match (start_idx : int) (end_idx : int) : option<string * int * int> = 
        (*
         * Returns the next matching substring and its position in the text. 
         *)

        if end_idx = text_len then None 
        else if String.is_prefix pattern (String.sub text start_idx (end_idx - start_idx)) then 
            Some (text, start_idx, end_idx)
        else find_next_match (start_idx + 1) end_idx
    in

    (*
     * Find all the occurrences of the pattern in the text, and return
     * the list of matches with their positions. 
     *)
    let rec loop (matches : (string * int * int) list) (start_idx : int) : (string * int * int) list = 
        match find_next_match start_idx text_len with
        | None -> matches
        | Some (matching, start, end) -> 
            let new_matches = matches @ [(matching, start, end)] in
            loop new_matches (end + 1)
    in

    List.rev (loop [] 0)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:71: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  (*
   * Finds all the occurrences of the given pattern in the text and returns a 
   * list of the matching substrings, and the indexes where they were found. 
   *)

  let text_len = String.length text in
  let pattern_len = String.length pattern in

  let rec find_next_match (start_idx : int) (end_idx : int) : option<string * int * int> = 
    (*
     * Returns the next matching substring and its position in the text. 
     *)

    if end_idx = text_len then None 
    else if String.is_prefix pattern (String.sub text start_idx (end_idx - start_idx)) then 
      Some (text, start_idx, end_idx)
    else find_next_match (start_idx + 1) end_idx
  in

  (*
   * Find all the occurrences of the pattern in the text, and return
   * the list of matches with their positions. 
   *)
  let rec loop (matches : (string * int * int) list) (start_idx : int) : (string * int * int) list = 
    match find_next_match start_idx text_len with
    | None -> matches
    | Some (matching, start, end) -> 
        let new_matches = matches @ [(matching, start, end)] in
        loop new_matches (end + 1)
  in

  List.rev (loop [] 0)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:69: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  (*
   * Finds all the occurrences of the given pattern in the text and returns a 
   * list of the matching substrings, and the indexes where they were found. 
   *)

  let text_len = String.length text in
  let pattern_len = String.length pattern in

  let rec find_next_match (start_idx : int) (end_idx : int) : option<string * int * int> = 
    (*
     * Returns the next matching substring and its position in the text. 
     *)

    if end_idx = text_len then None 
    else if String.is_prefix pattern (String.sub text start_idx (end_idx - start_idx)) then 
      Some (text, start_idx, end_idx)
    else find_next_match (start_idx + 1) end_idx
  in

  (*
   * Find all the occurrences of the pattern in the text, and return
   * the list of matches with their positions. 
   *)
  let rec loop (matches : (string * int * int) list) (start_idx : int) : (string * int * int) list = 
    match find_next_match start_idx text_len with
    | None -> matches
    | Some (matching, start, end) -> 
        let new_matches = matches @ [(matching, start, end)] in
        loop new_matches (end + 1)
  in

  List.rev (loop [] 0)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:69: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  (*
   * Finds all the occurrences of the given pattern in the text and returns a 
   * list of the matching substrings, and the indexes where they were found. 
   *)
  let text_len = String.length text in
  let pattern_len = String.length pattern in
  let rec find_next_match (start_idx : int) (end_idx : int) : option<string * int * int> = 
    (*
     * Returns the next matching substring and its position in the text. 
     *)
    if end_idx = text_len then None 
    else if String.is_prefix pattern (String.sub text start_idx (end_idx - start_idx)) then 
      Some (text, start_idx, end_idx)
    else find_next_match (start_idx + 1) end_idx
  in
  (*
   * Find all the occurrences of the pattern in the text, and return
   * the list of matches with their positions. 
   *)
  let rec loop (matches : (string * int * int) list) (start_idx : int) : (string * int * int) list = 
    match find_next_match start_idx text_len with
    | None -> matches
    | Some (matching, start, end) -> 
        let new_matches = matches @ [(matching, start, end)] in
        loop new_matches (end + 1)
  in
  List.rev (loop [] 0)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:69: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  (*
   * Finds all the occurrences of the given pattern in the text and returns a 
   * list of the matching substrings, and the indexes where they were found. 
   *)
  let text_len = String.length text in
  let pattern_len = String.length pattern in
  let rec find_next_match (start_idx : int) (end_idx : int) : option<string * int * int> = 
    (*
     * Returns the next matching substring and its position in the text. 
     *)
    if end_idx = text_len then None 
    else if String.is_prefix pattern (String.sub text start_idx (end_idx - start_idx)) then 
      Some (text, start_idx, end_idx)
    else find_next_match (start_idx + 1) end_idx
  in
  (*
   * Find all the occurrences of the pattern in the text, and return
   * the list of matches with their positions. 
   *)
  let rec loop (matches : (string * int * int) list) (start_idx : int) : (string * int * int) list = 
    match find_next_match start_idx text_len with
    | None -> matches
    | Some (matching, start, end) -> 
        let new_matches = matches @ [(matching, start, end)] in
        loop new_matches (end + 1)
  in
  List.rev (loop [] 0)

