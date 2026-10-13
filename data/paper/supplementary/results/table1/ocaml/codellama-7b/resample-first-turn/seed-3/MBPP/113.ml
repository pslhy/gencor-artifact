let rec check_integer (text : string) : bool =
  if text = "" then false
  else
    let character = String.get text 0 in
    let digits = ['0'..'9'] in
    let is_digit = List.mem character digits in
    if is_digit then check_integer (String.sub text 1 (String.length text - 1))
    else false

let is_integer (text : string) : bool = 
  check_integer (String.trim text)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if a string represents an integer or not. *)
