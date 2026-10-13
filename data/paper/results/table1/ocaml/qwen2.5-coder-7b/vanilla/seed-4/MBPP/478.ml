let rec remove_lowercase (str1 : string) : string = 
  let rec helper (str2 : string) : string =
    if String.length str2 = 0
    then str1
    else 
      let is_lowercase c = ('a' <= c && c <= 'z') in
      if is_lowercase (String.get str2 0)
      then helper (String.sub str2 1 (String.length str2 - 1))
      else
        let index = String.index str2 '\000' in
        let prefix = String.sub str2 0 index in
        let suffix = helper (String.sub str2 (index + 1) (String.length str2 - index - 1)) in
        prefix ^ suffix
  in helper str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
