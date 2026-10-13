
let rec max_Abs_Diff (arr : int list) : int = 
  let rec findMinMax acc = function
    | [] -> acc
    | h::t ->
      if fst acc > h then findMinMax (h, snd acc) t
      else if snd acc < h then findMinMax (fst acc, h) t
      else findMinMax acc t
  in
  let min_max = findMinMax (List.hd arr, List.hd arr) (List.tl arr) in
  snd min_max - fst min_max

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the maximum difference between any two elements in a given list. *)
