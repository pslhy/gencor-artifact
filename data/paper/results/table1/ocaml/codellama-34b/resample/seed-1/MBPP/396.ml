(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
let rec check_char (string : string) : string =
    let str_len = String.length string in
    if str_len = 0 then
        "false"
    else if String.get string 0 = String.get string (str_len - 1) then
        "true"
    else
        "false"

