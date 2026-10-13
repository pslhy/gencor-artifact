(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to count the total number of characters in a string. *)
let rec count_charac (str1 : string) : int =
    match str1 with
        | "" -> 0
        | _ -> 1 + count_charac (String.sub str1 1 (String.length str1 - 1))

