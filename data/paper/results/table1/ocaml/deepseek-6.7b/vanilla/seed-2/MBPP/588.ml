let rec big_diff (nums : int list) : int =
  let rec find_min_max = function
    | [] -> (0, 0)
    | x::xs ->
      let (min, max) = find_min_max xs in
      (if x < min then x else min, if x > max then x else max)
  in
  let (min, max) = find_min_max nums in
  max - min;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
