let rec big_diff (nums : int list) : int =
  if List.length nums <= 1 then 0
  else
    let max_nums = big_diff (List.drop_last nums) in
    let min_nums = big_diff (List.hd nums) in
    max_nums - min_nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the difference between largest and smallest value in a given list. *)
