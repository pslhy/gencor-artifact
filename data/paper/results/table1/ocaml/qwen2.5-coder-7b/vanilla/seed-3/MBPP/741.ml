let rec all_Characters_Same (s : string) : bool = 
  let rec helper (s : string) (prev_char : char) : bool = 
    match s with 
    | "" -> true 
    | ch :: rest -> if ch = prev_char then helper rest ch else false 
  in 
  if s = "" then true else helper s (String.get s 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
