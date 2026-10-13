let rec filter_by_prefix (strings : string list) (prefix : string) : string list = 
    let rec starts_with (str : string) (prefix : string) : bool = 
        let rec helper (s : string) (p : string) : bool = 
            match (s, p) with
            | (_, []) -> true
            | ([], _) -> false
            | (sh::st, ph::pt) -> sh = ph && helper st pt 
        in helper str prefix 
    in 
    List.filter (starts_with) strings


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Filter an input list of strings only for ones that start with a given prefix. *)
(*     >>> filter_by_prefix [] "a" *)
(*     [] *)
(*     >>> filter_by_prefix ["abc"; "bcd"; "cde"; "array"] "a" *)
(*     ["abc"; "array"] *)
