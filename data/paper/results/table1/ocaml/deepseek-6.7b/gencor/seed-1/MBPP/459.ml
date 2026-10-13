
let rec remove_uppercase (str1 : string) : string =
  match str1 with
  | "" -> ""
  | _ ->
      let open String in
      if for_all is_valid_utf_8 (sub str1 0 1) then
        match unsafe_get str1 0 with
        | 'A' .. 'Z' -> remove_uppercase (sub str1 1 (length str1 - 1))
        | _ -> unsafe_get str1 0 ^ remove_uppercase (sub str1 1 (length str1 - 1))
      else invalid_arg "Invalid UTF-8 sequence"

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
