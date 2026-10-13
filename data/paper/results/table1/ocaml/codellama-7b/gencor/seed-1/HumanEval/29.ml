
let rec filter_by_prefix (strings : string list) (prefix : string) : string list =
    match strings with
    | [] -> []
    | x :: xs ->
            if String.is_valid_utf_8 (prefix ^ x) then
                if String.starts_with prefix x then
                    x :: filter_by_prefix xs prefix
                else
                    filter_by_prefix xs prefix
            else
                failwith "strings are not valid utf-8"

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
