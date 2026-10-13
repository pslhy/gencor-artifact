(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove odd characters in a string. *)
let rec remove_odd (str1 : string) : string =
    let str2 = String.sub str1 1 ((String.length str1) - 1) in
    if (String.length str2 == 0) then
        str1
    else
        remove_odd str2

