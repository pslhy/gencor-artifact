let rec sum_range_list (list1 : int list) (m : int) (n : int) : int = 
    let rec sum_range acc list1 m n = 
        match list1 with
        | [] -> acc
        | x :: xs when m > 0 -> sum_range acc xs (m - 1) n
        | x :: xs when n > 0 -> sum_range (acc + x) xs m (n - 1)
        | x :: xs -> sum_range acc xs m n
    in
    sum_range 0 list1 m n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
