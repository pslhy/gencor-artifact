
let rec remove_lowercase (str1 : string) : string = 
    (* base case: ignore empty string *)
    if String.length str1 = 0 then 
        ""
    else
        (* Remove all lowercases in the remaining string *)
        let ch = String.get str1 0 in
        if Char.lowercase_ascii ch = ch then 
            remove_lowercase (String.sub str1 1 (String.length str1 - 1))
        else 
            String.concat str1.[0];
        remove_lowercase (String.sub str1 1 (String.length str1 - 1)) in

let _ = remove_lowercase "Hello World!" in
(* The result should be "!" *)
Printf.printf "%s\n" __MODULE__;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
