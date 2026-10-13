let rec is_lower (string : string) : string = 
  let f (char : char) = if char >= 'A' && char <= 'Z' then char + 32 else char in
  across string.(n) (f n) as str 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert the given string to lower case. *)
