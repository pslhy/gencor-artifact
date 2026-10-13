let rec max_sub_array_sum_repeated (a : int list) (n : int) (k : int) : int =
  if n = 0 then 0
  else if k = 1 then List.fold_left max 0 a
  else begin
    let sum = List.fold_left (fun sum x -> sum + x) 0 a in
    max (sum + max_sub_array_sum_repeated a (n-1) (k-1))
         (max_sub_array_sum_repeated a (n-1) k)
  end


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the largest sum of a contiguous list in the modified list which is formed by repeating the given list k times. *)
