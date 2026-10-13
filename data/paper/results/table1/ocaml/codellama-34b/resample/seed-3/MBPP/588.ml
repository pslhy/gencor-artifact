(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
let rec big_diff (nums : int list) : int =
  if List.length nums <= 1 then 0
  else
    let max_nums = big_diff (List.drop_last nums) in
    let min_nums = big_diff (List.hd nums) in
    max_nums - min_nums

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:30: Unbound value "List.drop_last" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec big_diff (nums : int list) : int =
  if List.length nums <= 1 then 0
  else
    let max_num = List.fold_left (fun _ e -> e) nums in
    let min_num = List.fold_left (fun e _ -> e) nums in
    max_num - min_num

