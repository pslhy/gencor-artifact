let rec remove_lowercase (str1 : string) : string =
  let len = String.length str1 in
  if len < 2 then str1
  else
    let str2 = (String.sub str1 1 (len - 1)) in
    let recurse = remove_lowercase str2 in
    if String.get str1 0 >= 'A' && String.get str1 0 <= 'Z' then str1 ^ recurse
    else recurse
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
