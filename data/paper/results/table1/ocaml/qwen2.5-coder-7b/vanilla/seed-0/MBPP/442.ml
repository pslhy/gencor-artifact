let rec positive_count (nums : int list) : float = 
  let rec count_positives (nums : int list) (count : int) : int =
    match nums with
    | [] -> count
    | x :: xs -> if x > 0 then count_positives xs (count + 1) else count_positives xs count
  in
  let pos_count = count_positives nums 0 in
  let total_count = List.length nums in
  if total_count = 0 then 0.0 else float pos_count /. float total_count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
