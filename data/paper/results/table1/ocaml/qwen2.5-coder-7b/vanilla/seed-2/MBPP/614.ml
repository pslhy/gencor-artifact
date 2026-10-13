let rec cummulative_sum (test_list : int list list) : int = 
    let rec sum_list (lst : int list) : int = 
        match lst with
        | [] -> 0
        | h::t -> h + sum_list t in
    let rec flatten (lst : int list list) : int list = 
        match lst with
        | [] -> []
        | h::t -> h @ flatten t in
    sum_list (flatten test_list)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the cumulative sum of all the values that are present in the given list of lists. *)
