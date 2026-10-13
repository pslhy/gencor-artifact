let rec find_literals (text : string) (pattern : string) :  string * int * int = 
  let rec check (text: string) (pattern: string) (index: int) =
    if String.length pattern = 0 then 
      (text, 0, 0)
    else if String.length text < String.length pattern then 
      ("", -1, -1)
    else if String.sub text index (String.length pattern) = pattern then 
      (pattern, index, index + String.length pattern - 1)
    else 
      check text pattern (index + 1)
  in
  check text pattern 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
