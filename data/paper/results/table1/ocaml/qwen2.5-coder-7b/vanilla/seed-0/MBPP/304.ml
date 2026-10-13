let rec find_Element (arr : int list) (ranges : int list list) (rotations : int) (index : int) : int = 
  let size = List.length arr in
  let adjusted_index = if index < rotations then (index + rotations) mod size else index in
  let across_range = List.exists (fun range -> range.[0] <= adjusted_index && adjusted_index <= range.[1]) ranges in
  if across_range then let start = min (List.min_with (fun r -> r.[0]) ranges) rotations in
                      (arr.(adjusted_index - start + rotations + size) - start + rotations) mod size
  else arr.(adjusted_index)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find element at a given index after number of rotations. *)
