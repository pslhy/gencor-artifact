let rec find_literals (text : string) (pattern : string) :  string * int * int =
    let len = String.length text in
    let rec aux (i : int) (acc : string) : string =
        if i < len - 1 then
            let c = text.[i] in
            if c = pattern.[0] then
                let sub = aux (i + 1) "" in
                if sub = pattern then
                    (sub, i, i + 1)
                else
                    (acc ^ sub, i, i + 1)
            else
                (acc ^ String.make 1 c, i, i + 1)
        else
            acc
    in
    aux 0 ""

let find_regex (text : string) (pattern : string) : string * int * int =
    let pattern = Str.regexp pattern in
    try
        let res = Str.search_forward pattern text 0 in
        (Str.matched_string text, res, Str.match_end ())
    with Not_found ->
        ("", 0, 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
