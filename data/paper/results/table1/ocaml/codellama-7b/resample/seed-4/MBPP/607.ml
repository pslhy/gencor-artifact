(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int = 
    let open Batteries in
    let start = 0 in
    let re = Str.regexp pattern in
    let res = Str.search_all_position re text in
    match res with
        | Some((_,_)) ->
            let sub_str =  BatString.substring text (fst res) ((snd res) - (fst re)) in
            sub_str, start, (snd res) + 1
        | None -> "", -1, -1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:14: Unbound module "Batteries" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int = 
    let open String in
    let start = 0 in
    let length = String.length text in
    let pattern_length = String.length pattern in
    let rec search_from_index i = 
        if i >= length - pattern_length then -1
        else if String.sub text (i) pattern_length = pattern then i
        else search_from_index (i+1)
    in
    search_from_index start

