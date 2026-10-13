
let rec first_repeated_char (str1 : string) : string option =
    let str2 = String.lowercase_ascii str1 in
    match String.length str2 with
    | 0 | 1 -> None
    | _ ->
        let rec aux idx =
            if str2.[idx] = str2.[idx + 1] then
                Some str2.[idx]
            else if idx = String.length str2 - 2 then
                None
            else
                aux (idx + 1)
        in
        aux 0

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
