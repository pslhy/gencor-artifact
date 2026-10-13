(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
let rec trim_tuple (test_list : int list list) (k : int) : int list list =
  if k = 0 then test_list
  else if test_list = [] then []
  else let trimmed_head = List.fold_left (fun acc x -> if x < k then x :: acc else acc) [] test_list
            trimmed_tail = trim_tuple (List.fold_left (fun acc x -> if x >= k then x :: acc else acc) [] test_list) (k - 1) in trimmed_head @ trimmed_tail

