let rec max_sub_array_sum (a : int list) (size : int) : int =
  match a with
  | [] -> 0
  | h :: t ->
    let sublist_sum = if size <= List.length a then
      Int64.to_int (List.fold_left (fun acc el -> Int64.add acc (Int64.of_int el)) 0 (List.take size a)) + (if size < List.length a then max_sub_array_sum (List.drop size a) size else 0)
    else
      Int64.to_int (List.fold_left (fun acc el -> Int64.add acc (Int64.of_int el)) 0 a) in
    max sublist_sum (max_sub_array_sum t size)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of the largest contiguous sublist in the given list. *)
