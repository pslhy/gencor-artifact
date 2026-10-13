let rec find_literals (text : string) (pattern : string) :  string * int * int =
  if text = "" || pattern = "" then
    "", -1, -1
  else if pattern.[0] = text.[0] then
    let first = text.[0] in
    let rest = String.sub text 1 (String.length text - 1) in
    let res, st, ed = find_literals rest (String.sub pattern 1 (String.length pattern - 1)) in
    if res = "" then
      first, 0, 0
    else
      first ^ res, 0, String.length text
  else
    "", -1, -1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
