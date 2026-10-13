let rec sum_range_list (list1 : int list) (m : int) (n : int) : int = 
    let rec sum_range (list : int list) (start : int) (acc : int) : int =
        match list with
        | [] -> acc
        | _ :: xs when start <= n -> sum_range xs (start + 1) (acc + if start >= m then List.hd list else 0)
        | _ :: xs -> sum_range xs (start + 1) acc
    in sum_range list1 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
