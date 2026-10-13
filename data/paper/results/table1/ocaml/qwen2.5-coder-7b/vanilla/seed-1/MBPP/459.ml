let rec remove_uppercase (str1 : string) : string = 
  let rec check (str2 : string) : bool = 
    let rec check_char (c : char) : bool = 
      ('A' <= c && c <= 'Z') in
    let rec iter (i : int) : bool = 
      if i >= String.length str2 then 
        false
      else if check_char (str2.[i]) then 
        true
      else 
        iter (i + 1) 
    in
    iter 0
  in
  if check str1 then 
    ""
  else 
    str1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to remove uppercase substrings from a given string. *)
