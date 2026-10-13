let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
    let n = String.length text in
    let m = String.length pattern in
    let rec find_first_match (i : int) : int option =
    if i >= n then None
    else
        let j = ref 0 in
        let k = ref 0 in
        while !j < n - m + 1 && !k < m && text.[!j + !k] = pattern.[!k] do
        incr k;
        if !k = m then Some (!j + m - 1) else None
    in
    find_first_match 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
