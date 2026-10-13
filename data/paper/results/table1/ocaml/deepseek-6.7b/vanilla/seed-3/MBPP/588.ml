let rec big_diff (nums : int list) : int =
  match nums with
  | [] -> invalid_arg "List cannot be empty"
  | [x] -> x - x (* Return 0 if there is only one element *)
  | x :: xs ->
      let min_val = min_element xs (List.hd nums) in
      let max_val = max_element xs (List.hd nums) in
      max_val - min_val

and min_element (nums : int list) (min_val : int) : int =
  match nums with
  | [] -> min_val
  | x :: xs -> min_element xs (if x < min_val then x else min_val)

and max_element (nums : int list) (max_val : int) : int =
  match nums with
  | [] -> max_val
  | x :: xs -> max_element xs (if x > max_val then x else max_val)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
