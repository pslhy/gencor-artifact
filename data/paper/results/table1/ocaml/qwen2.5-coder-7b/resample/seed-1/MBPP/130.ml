(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the item with maximum frequency in a given list. *)
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

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:19: Unbound value "head" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec max_occurrences (nums : int list) : int = 
  let rec count acc num lst = 
    if lst = [] then acc
    else if num = List.hd lst then count (acc + 1) num (List.tl lst)
    else count acc num (List.tl lst)
  in
  let rec max_freq acc lst = 
    if lst = [] then acc
    else max_freq (max (count 0 (List.hd lst) nums) acc) (List.tl lst)
  in
  max_freq 0 nums

