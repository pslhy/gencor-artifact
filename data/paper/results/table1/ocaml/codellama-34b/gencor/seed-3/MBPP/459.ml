
let rec remove_uppercase (str1 : string) : string =
  if str1 = "" then "" else
  let (hd, tl) = str1.(0), str1.(1..(String.length str1 - 1)) in
  if Char.compare (Char.uppercase_ascii hd) hd then hd :: (remove_uppercase tl) else
  remove_uppercase tl

let remove_uppercase (str : string) : string =
  remove_uppercase (String.lowercase_ascii str)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
