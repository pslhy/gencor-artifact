let rec sum_range_list (list1 : int list) (m : int) (n : int) : int = 
    let rec sum_range (acc : int) (list : int list) (start : int) (end_ : int) : int = 
        match list with
        | [] -> acc
        | h :: t -> 
            if start > 0 then sum_range (acc + h) t (start - 1) end_
            else if start = 0 then sum_range (acc + h) t (start - 1) (end_ - 1)
            else sum_range acc t start (end_ - 1)
    in
    sum_range 0 list1 m n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the sum of numbers in a list within a range specified by two indices. *)
