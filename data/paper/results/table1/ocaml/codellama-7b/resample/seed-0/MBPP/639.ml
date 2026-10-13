(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
let rec sample_nam (sample_names : string list) : int =
  match sample_names with
  | [] -> 0
  | hd :: tl -> (
      let hd_length = String.length hd
      match hd.[0] with
      | 'a' .. 'z' -> 0
      | _ -> hd_length + sample_nam tl
      )

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:7: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sample_nam (sample_names : string list) : int =
  match sample_names with
  | [] -> 0
  | hd :: tl ->
      let hd_length = String.length hd
      in
      if hd.[0] = 'a' then hd_length
      else sample_nam tl

