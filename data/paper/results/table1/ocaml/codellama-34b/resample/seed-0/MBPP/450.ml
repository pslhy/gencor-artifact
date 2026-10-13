(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to extract specified size of strings from a given list of string values. *)
let rec extract_string (str : string list) (l : int) : string list =
  match str with
  | [] -> []
  | hd :: tl ->
      if (l = 0) then
        []
      else if hd = "" then
        extract_string tl (l - 1)
      else
        hd :: extract_string tl (l - 1)

