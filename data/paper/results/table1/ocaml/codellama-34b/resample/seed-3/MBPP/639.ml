(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter. *)
let rec sample_nam (sample_names : string list) : int =
  if sample_names = [] then 0
  else if sample_names.hd = Char.lowercase(sample_names.hd.[0]) then sample_nam(sample_names.tl)
  else String.length(sample_names.hd) + sample_nam(sample_names.tl)

