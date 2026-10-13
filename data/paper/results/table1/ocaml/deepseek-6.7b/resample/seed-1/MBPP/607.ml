(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  match Str.search_forward (Str.regexp pattern) text 0 with
  | exception Not_found -> ("", -1, -1)
  | pos -> 
      let end_pos = pos + String.length pattern - 1 in
      (String.sub text pos pattern, pos, end_pos)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  match Str.search_forward (Str.regexp pattern) text 0 with
  | exception Not_found -> ("", -1, -1)
  | pos -> 
      let end_pos = pos + String.length pattern - 1 in
      (String.sub text pos pattern, pos, end_pos)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:9: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_literals (text : string) (pattern : string) :  string * int * int =
  match String.index_from text 0 pattern with
  | exception Not_found -> ("", -1, -1)
  | pos -> 
      let end_pos = pos + String.length pattern - 1 in
      (String.sub text pos pattern, pos, end_pos)

