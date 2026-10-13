let rec histogram (test : string) : (string * int) list = 
    let helper (test : string) : (string * int) list = 
        let length = String.length test in
        (* Creates a list of all characters in the input string *)
        let rec all_chars (index : int) : char list = 
            if index >= length then []
            else List.hd test @ all_chars (index + 1) in
        match all_chars 0 with
        | [] -> []
        | hd :: tl ->
            let hd_count = (String.count test hd) in
            let tl_count = (String.count test hd) in
            (hd, hd_count) :: helper tl
        in
        helper test

let rec most_frequent (input : char * int list) : (char * int) list = 
    let (letter, count) = input in
    match count with
    | [] -> []
    | hd :: tl -> 
        if hd == List.hd count then (letter, hd) :: most_frequent(tl)
        else []

let histogram (test : string) : (string * int) list = 
    (* Helper function to compute histogram of a string *)
    let histo = histogram_helper test in
    (* Helper function to find most frequent letters in the histogram *)
    let frequent = most_frequent histo in
    frequent

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
