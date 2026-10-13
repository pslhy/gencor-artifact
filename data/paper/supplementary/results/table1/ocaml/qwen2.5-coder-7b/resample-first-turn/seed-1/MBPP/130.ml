let rec max_occurrences (nums : int list) : int = 
  let rec count acc num = 
    if num::nums = [] then acc
    else if num = head then count (acc + 1) num (tail nums)
    else count acc num (tail nums)
  in
  let rec max_freq acc nums = 
    if nums = [] then acc
    else max_freq (max (count 0 head nums) acc) (tail nums)
  in
  max_freq 0 nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
