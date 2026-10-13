
let rec occurance_substring (text : string) (pattern : string) :  string * int * int option =
    if text = "" || pattern = "" then ("", 0, None) else
        let rec search text offset pattern acc =
            match text with
            | [] -> ("", 0, None)
            | h :: t ->
                if pattern = text then (h, 1, Some 0) else
                let (str, count, pos) = search t (offset + 1) pattern acc in
                (str, count + 1, pos)
        in
        search text 0 pattern ("", 0, None)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the occurrence and position of the substrings within a string. Return None if there is no match. *)
