(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether all the characters are same or not. *)
let rec all_Characters_Same (s : string) : bool =
  if String.length s <= 1 then
    true
  else if s.[0] = s.[1] then
    all_Characters_Same (String.sub s 1 (String.length s - 1))
  else
    false

