let rec check_char (string : string) : string =
  let len = String.length string in
  if len > 0 then
    let first_char = String.get string 0 and last_char = String.get string (len - 1) in
    if first_char = last_char then "true" else "false"
  else
    "false"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
