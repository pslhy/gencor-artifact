let rec big_sum (nums : int list) : int =
  if List.length nums <= 2 then
    nums
  else
    let sorted_nums = List.sort nums in
    let smallest = sorted_nums.(List.length nums - 1) in
    let largest = sorted_nums.(0) in
    smallest + largest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the largest and smallest value in a given list. *)
