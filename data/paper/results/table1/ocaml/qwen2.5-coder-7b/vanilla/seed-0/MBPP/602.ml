let rec first_repeated_char (str1 : string) : string option = 
  let rec helper seen_chars i = 
    if i >= String.length str1 then None
    else 
      let current_char = str1.[i] in
      if String.contains seen_chars current_char then Some current_char
      else helper (seen_chars ^ (String.make 1 current_char)) (i + 1)
  in
  helper "" 0;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the first repeated character in a given string. *)
