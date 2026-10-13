let rec sum_range_list (list1 : int list) (m : int) (n : int) : int = 
  let rec sum_list lst acc = 
    match lst with
    | [] -> acc
    | x :: xs -> sum_list xs (acc + x)
  in
  let rec slice_list lst m n acc = 
    match lst, m, n with
    | [], _, _ -> acc
    | _, 0, _ :: xs -> slice_list xs (m - 1) n acc
    | x :: xs, m, 0 :: ys -> slice_list xs (m - 1) n (x :: acc)
    | x :: xs, m, _ -> slice_list xs (m - 1) (n - 1) (x :: acc)
  in
  let sliced_list = slice_list (List.rev list1) m n [] in
  sum_list (List.rev sliced_list) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
