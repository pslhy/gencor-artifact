let rec find_adverbs (text : string) : string =
    let rec aux (i : int) (acc : string) =
        if i >= String.length text then
            acc
        else if text.[i] = 'ly' && (String.get text (i - 1)) = ' ' then
            aux (i + 1) (text.[i - 1] ^ text.[i] ^ acc)
        else
            aux (i + 1) acc
    in
    aux 0 ""

let find_positions (text : string) : int * int =
    let rec aux (i : int) (start : int) =
        if i >= String.length text then
            (start, i - start)
        else if text.[i] = ' ' then
            aux (i + 1) (i + 1)
        else
            aux (i + 1) start
    in
    aux 0 0

let find_first_adverb (text : string) : (int * int) option =
    match find_positions text with
    | (0, _) -> None
    | (start, len) -> Some (start, start + len - 1)

let trim (text : string) : string * (int * int) list =
    let rec aux (i : int) (acc : (int * int) list) =
        if i >= String.length text then
            (text, acc)
        else if Char.is_space text.[i] then
            aux (i + 1) acc
        else
            aux (i + 1) ((i, i + 1) :: acc)
    in
    aux 0 []

let extract_adverb (text : string) : string * (int * int) option =
    let text = find_first_adverb text in
    match text with
    | None -> ("", None)
    | Some (start, end_pos) ->
        let (trimmed_text, positions) = trim (String.sub text start (end_pos - start + 1)) in
        (trimmed_text, Some (positions.(0)))

let extract_adverbs (text : string) : (string * (int * int) option) list =
    let rec aux (i : int) (acc : (string * (int * int) option) list) =
        if i >= String.length text then
            acc
        else if Char.is_space text.[i] then
            aux (i + 1) acc
        else
            let (trimmed_text, position) = extract_adverb (String.sub text i (String.length text - i) in
            aux (i + String.length trimmed_text) ((trimmed_text, position) :: acc)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the first adverb ending with ly and its positions in a given string. *)
