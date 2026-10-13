let rec remove_lowercase (str1 : string) : string = 
  let is_lowercase c = Char.code c >= Char.code 'a' && Char.code c <= Char.code 'z' in
  let rec helper (acc : string) (str : string) : string = 
    match str with
    | "" -> acc
    | c::cs -> 
      if is_lowercase c then helper acc cs else helper (acc ^ (String.make 1 c)) cs
  in
  helper "" str1
;;  


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove lowercase substrings from a given string. *)
