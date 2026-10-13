
let rec max_run_uppercase (test_str : string) : int =
    let len = String.length test_str in
    let rec aux i =
        if i >= len then
            0
        else if Char.uppercase_ascii test_str.[i] = test_str.[i] then
            1 + aux (i + 1)
        else
            0 in
    aux 0;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find maximum run of uppercase characters in the given string. *)
