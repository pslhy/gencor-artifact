(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every odd index contains odd numbers of a given list. *)
let rec odd_position (nums : int list) : bool =
  if nums = [] then true else
  let (hd, tl) = (List.hd nums, List.tl nums) in
  if hd mod 2 = 1 && odd_position tl then
    true
  else if hd mod 2 = 0 then
    false
  else
    odd_position tl

