let rec check_integer (text : string) : bool = 
    (* Check if the string only contains digits and optionally a negative sign at the beginning *)
    let rec contains_digits (text : string) (index : int) : bool = 
        match index with
        | i when i < text.length ->
            let c = String.get text i in
            if c >= '0' && c <= '9' then contains_digits text (i + 1) else false
        | _ -> true
    in
    match String.length text with
    | 0 -> false
    | _ -> contains_digits text 0

let rec check_integer' (text : string) : bool = 
    (* Check if the string only contains digits and optionally a negative sign at the beginning *)
    let rec contains_digits (text : string) (index : int) : bool = 
        match index < text.length with
        | false -> true
        | true ->
            let c = String.get text index in
            if c >= '0' && c <= '9' then contains_digits text (index + 1) else false
    in
    match String.length text with
    | 0 -> false
    | _ -> contains_digits text 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
