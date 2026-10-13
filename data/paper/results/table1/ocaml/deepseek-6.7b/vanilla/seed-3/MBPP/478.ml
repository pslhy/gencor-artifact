let rec remove_lowercase (str1 : string) : string =
  let len = String.length str1 in
  let rec helper i =
    if i = len then 
      ""
    else 
      let c = String.get str1 i in
      if c >= 'A' && c <= 'Z' then String.make 1 c ^ helper (i + 1)
      else helper (i + 1)
  in
  helper 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
