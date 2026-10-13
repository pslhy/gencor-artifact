
let rec check_str (string : string) : bool =
  if string = ""
  then false
  else if Char.lowercase_ascii string.[0] = 'a' || 'e' || 'i' || 'o' || 'u' then true
  else check_str (String.sub string 1 (String.length string - 1))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given string is starting with a vowel or not using regex. *)
