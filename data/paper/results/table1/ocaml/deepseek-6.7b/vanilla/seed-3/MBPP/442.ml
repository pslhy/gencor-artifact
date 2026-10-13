let rec positive_count (nums : int list) : float =
  match nums with
  | [] -> 0.0
  | hd :: tl -> if hd > 0 then 1.0 +. positive_count tl else positive_count tl

let ratio_positive_count (nums: int list) : float = 
  let size = List.length nums in
  if size = 0 then 0.0
  else positive_count nums /. float_of_int size


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
