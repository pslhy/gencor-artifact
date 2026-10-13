let rec odd_values_string (str : string) : string =
  let len = String.length str in
  if len = 0 then ""
  else if len = 1 then str
  else (String.make 1 str.[0]) ^ (odd_values_string (String.sub str 2 (len-2)))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to remove the characters which have odd index values of a given string. *)
