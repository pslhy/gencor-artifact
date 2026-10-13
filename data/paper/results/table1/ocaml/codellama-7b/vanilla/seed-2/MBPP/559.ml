let rec max_sub_array_sum (a : int list) (size : int) : int =
  match a with
  | [] -> 0
  | (x::xs) ->
    let x = if size > 0 then max_sub_array_sum xs (size - 1) else x in
    let x' = max_sub_array_sum xs size in
    max x x'

let sum_of_largest_sublist (a : int list) : int =
  let _, size = List.fold_left (fun (acc, size) x ->
    if acc + x > size then (acc + x, size) else (acc + x, acc + x)
  ) (0, 0) a in
  max_sub_array_sum a size


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
