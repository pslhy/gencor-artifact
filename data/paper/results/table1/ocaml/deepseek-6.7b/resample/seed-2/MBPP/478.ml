(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
let rec remove_lowercase (str1 : string) : string =
  let len = String.length str1 in
  if len < 2 then str1 else
  match str1.[0] with
  | 'a'..'z' -> remove_lowercase (String.sub str1 1 (len-1))
  | _ -> let str2 = remove_lowercase (String.sub str1 1 (len-1)) in
         match str1.[0] with
         | 'A'..'Z' -> String.cons str1.[0] str2
         | _ -> str1

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:24: Unbound value "String.cons" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_lowercase (str1 : string) : string =
  let len = String.length str1 in
  if len < 2 then str1 else
  match str1.[0] with
  | 'a'..'z' -> remove_lowercase (String.sub str1 1 (len-1))
  | _ -> let str2 = remove_lowercase (String.sub str1 1 (len-1)) in
         match str1.[0] with
         | 'A'..'Z' -> String.sub str1 0 1 ^ str2
         | _ -> str1

