(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort a given list of strings of numbers numerically. https://www.geeksforgeeks.org/mlthon-sort-numeric-strings-in-a-list/ *)
let rec sort_numeric_strings (nums_str : string list) : int list =
  if nums_str = [] then
    []
  else
    let num = int_of_string (List.hd nums_str) in
    let res = sort_numeric_strings (List.tl nums_str) in
    if num = 0 then
      res
    else
      num :: res

let nums = ["1"; "2"; "10"; "11"; "12"; "23"];;
let sorted_nums = sort_numeric_strings nums;;
print_string (List.fold_left (fun s n -> s ^ string_of_int n) "" sorted_nums);;

