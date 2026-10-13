(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert a given string to uppercase. *)
let rec is_upper (string : string) : string =
  let len = String.length string in
  if len = 0 then string
  else (String.make 1 (Char.uppercase (String.get string 0))) ^ is_upper (String.sub string 1 (len - 1))

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:24: Unbound value "Char.uppercase" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec is_upper (string : string) : string =
  let len = String.length string in
  if len = 0 then string
  else (String.make 1 (Char.uppercase_ascii (String.get string 0))) ^ is_upper (String.sub string 1 (len - 1))

