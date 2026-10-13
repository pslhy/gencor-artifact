let rec check_char (string : string) : string = 
  match string with 
  | "" -> "Char is unknown"
  | "\000" -> "Char is unknown"
  | _ -> 
    let first_char = string.[0] in
    let last_char = string.[String.length string - 1] in
    if first_char = last_char then
      "Start and end with the same character"
    else
      "Do not start and end with the same character"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string starts and ends with the same character or not. *)
