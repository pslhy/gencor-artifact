let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  if k = 0 then 0
  else if n = 0 then 0
  else
    let main_sum = List.fold_left (fun max_sum x -> max max_sum x) 0 a in
    let rep_a = List.init k (fun _ -> a) in
    let sum_of_rep_a = List.fold_left (fun acc x -> acc @ x) [] rep_a in
    let rep_sum = List.fold_left (fun max_sum x -> max max_sum x) 0 sum_of_rep_a in
    max max_sum rep_sum


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
