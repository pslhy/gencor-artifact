(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to remove first and last occurrence of a given character from the string. *)
let rec remove_Occ (s : string) (ch : string) : string =
  if String.length s <= 1 then
    ""
  else if s.[0] = ch then
    remove_Occ (String.sub s 1 (String.length s - 1)) ch
  else if s.[String.length s - 1] = ch then
    remove_Occ (String.sub s 0 (String.length s - 1)) ch
  else
    s
  ]

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_Occ (s : string) (ch : string) : string =
  if String.length s <= 1 then
    ""
  else if s.[0] = ch then
    remove_Occ (String.sub s 1 (String.length s - 1)) ch
  else if s.[String.length s - 1] = ch then
    remove_Occ (String.sub s 0 (String.length s - 1)) ch
  else
    s
  ]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:10:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec remove_Occ (s : string) (ch : string) : string =
  if String.length s <= 1 then
    ""
  else if s.[0] = ch then
    remove_Occ (String.sub s 1 (String.length s - 1))
  else if s.[String.length s - 1] = ch then
    remove_Occ (String.sub s 0 (String.length s - 1))
  else
    s

