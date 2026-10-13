let rec upper_ctr (str : string) : int =
  match str with
  | "" -> 0
  | hd :: tl ->
      if Char.uppercase_ascii hd = hd && not (Char.lowercase_ascii hd = hd) then
        1 + upper_ctr tl
      else upper_ctr tl


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count the upper case characters in a given string. *)
