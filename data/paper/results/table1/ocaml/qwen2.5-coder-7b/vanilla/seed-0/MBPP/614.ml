let rec cummulative_sum (test_list : int list list) : int = 
  let rec sum_list lst acc = 
    match lst with
    | [] -> acc
    | x :: xs -> sum_list xs (acc + x) in
  let rec sum_lists lst acc = 
    match lst with
    | [] -> acc
    | x :: xs -> sum_lists xs (acc + sum_list x 0) in
  sum_lists test_list 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the cumulative sum of all the values that are present in the given list of lists. *)
