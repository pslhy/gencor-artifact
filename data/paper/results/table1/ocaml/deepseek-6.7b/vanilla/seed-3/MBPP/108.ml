let rec merge_sorted_list (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  match (num1, num2, num3) with
  | ([], [], []) -> []
  | (x :: xs, _, _) when x <= List.hd num2 && x <= List.hd num3 -> x :: merge_sorted_list xs num2 num3
  | (_, x :: xs, _) when x <= List.hd num1 && x <= List.hd num3 -> x :: merge_sorted_list num1 xs num3
  | (_, _, x :: xs) when x <= List.hd num1 && x <= List.hd num2 -> x :: merge_sorted_list num1 num2 xs
  | (_, _, _) -> 
    let min_val = min (List.hd num1) (List.hd num2) in
    if min_val = List.hd num1 then merge_sorted_list (List.tl num1) num2 num3 
    else merge_sorted_list num1 (List.tl num2) num3
  | _ -> failwith "Impossible"

let rec merge_three_lists (num1 : int list) (num2 : int list) (num3 : int list) : int list =
  let sorted_num1 = List.sort compare num1 in
  let sorted_num2 = List.sort compare num2 in
  let sorted_num3 = List.sort compare num3 in
  merge_sorted_list sorted_num1 sorted_num2 sorted_num3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three lists into a single sorted list. *)
