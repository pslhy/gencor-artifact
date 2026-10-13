let rec positive_count (nums : int list) : float = 
  let count_helper (nums: int list) (count: int) : int =
    match nums with
    | [] -> count
    | x::xs when x > 0 -> count_helper xs (count + 1)
    | _::xs -> count_helper xs count
  in
  let total_count = List.length nums in
  if total_count = 0 then 0.0 else 
  let positive_nums = count_helper nums 0 in
  (float positive_nums) /. (float total_count)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
