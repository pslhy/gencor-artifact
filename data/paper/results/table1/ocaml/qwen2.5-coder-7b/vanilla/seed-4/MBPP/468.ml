let rec max_product (arr : int list) : int = 
  let rec helper (lst : int list) (max_prod : int) : int =
    match lst with
    | [] -> max_prod
    | x::xs ->
       let max_subseq_prod = List.fold_left (fun acc y -> if arr.(y) < x then max acc (arr.(y) * acc) else acc) 1 (List.mapi (fun i _ -> i) xs) in
       helper xs (max max_prod (x * max_subseq_prod))
  in
  helper arr 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
