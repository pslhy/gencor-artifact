
let rec first_repeated_char (str1 : string) : string option =
    match str1 with
        | "" -> None
        | str2 ->
            let rev_str = String.sub str1 0 (String.length str1 - 1) in
            match String.contains rev_str str1 with
                | true -> Some str1
                | false -> first_repeated_char rev_str
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
