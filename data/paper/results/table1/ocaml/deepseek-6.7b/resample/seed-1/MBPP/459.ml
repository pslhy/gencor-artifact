(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
let rec remove_uppercase (str1 : string) : string =
  match str1 with
  | "" -> ""
  | _ ->
      let open String in
      if for_all is_lower (sub str1 0 1)
      then sub str1 0 1 ^ remove_uppercase (sub str1 1 (length str1 - 1))
      else remove_uppercase (sub str1 1 (length str1));;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:18: Unbound value "is_lower" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_uppercase (str1 : string) : string =
  match str1 with
  | "" -> ""
  | _ ->
      let open String in
      if for_all (fun c -> Char.code c >= 97 && Char.code c <= 122) (sub str1 0 1)
      then sub str1 0 1 ^ remove_uppercase (sub str1 1 (length str1 - 1))
      else remove_uppercase (sub str1 1 (length str1));;

