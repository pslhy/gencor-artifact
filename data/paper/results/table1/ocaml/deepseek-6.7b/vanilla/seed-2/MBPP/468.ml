let rec max_product (arr : int list) : int =
  let len = List.length arr in
  if len < 3 then
    (* If list contains less than 3 elements, return the maximum *)
    List.fold_left max Int.min_int arr
  else
    (* Otherwise, calculate the maximum product for increasing subsequences *)
    let max_prod_left = List.fold_left max Int.min_int (List.init len (fun i -> if i = 0 || i = len - 1 then 1 else arr.(i - 1) * arr.(i))) in
    let max_prod_right = List.fold_left max Int.min_int (List.init len (fun i -> if i = 0 || i = len - 1 then 1 else arr.(i + 1) * arr.(i))) in
    max max_prod_left max_prod_right
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that list. *)
