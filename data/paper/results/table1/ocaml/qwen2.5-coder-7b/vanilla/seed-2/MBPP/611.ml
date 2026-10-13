let rec max_of_nth (test_list : int list list) (n : int) : int = 
    let rec find_max (lst : int list) (max_val : int) : int = 
        match lst with 
        | [] -> max_val 
        | x :: xs -> if x > max_val then find_max xs x else find_max xs max_val 
    in 
    let rec get_nth_column (lst : int list list) (n : int) : int list = 
        match lst with 
        | [] -> [] 
        | x :: xs -> (match x with 
                        | [] -> get_nth_column xs n 
                        | y :: ys -> if n = 0 then y :: (get_nth_column xs n) else y :: get_nth_column ys n) 
    in 
    let col = get_nth_column test_list n in 
    find_max col Int.min_int


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
