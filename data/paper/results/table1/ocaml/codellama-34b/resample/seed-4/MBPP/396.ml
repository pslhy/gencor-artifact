(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
let rec check_char (string : string) : string = 
    (* Check if the string has length 0 or 1 *)
    if String.length string < 2 then true 
    (* Check if the first and last characters are the same *)
    else if String.get s 0 = String.get s (String.length s - 1) then check_char (String.sub s 1 (String.length s -2))
    (* If the first and last characters are not the same, return false *)
    else false

