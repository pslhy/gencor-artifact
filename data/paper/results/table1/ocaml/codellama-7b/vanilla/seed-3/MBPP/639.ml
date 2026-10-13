let rec sample_nam (sample_names : string list) : int =
  match sample_names with
  | [] -> 0
  | n :: ns -> if n.[0] = 'a' || n.[0] = 'A' then sample_nam ns else n.[0] :: sample_nam ns

let names = ["John"; "Smith"; "Jane"; "DOE"];;
sample_nam names
(* output: 4 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
