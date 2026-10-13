
let rec first_non_repeating_character (str1 : string) : string option =
    let str2 = String.lowercase_ascii str1 in
    match String.length str2 with
    | 0 | 1 -> Some str2
    | _ ->
        let c = String.get str2 0 in
        if String.contains str2 (String.lowercase_ascii (String.make 1 c)) then
            first_non_repeating_character (String.sub str2 1 (String.length str2 - 1))
        else
            Some c

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first non-repeated character in a given string. *)
