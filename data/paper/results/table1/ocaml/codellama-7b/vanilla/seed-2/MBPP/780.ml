let rec find_combinations (test_list :  (int * int) list) :  (int * int) list =
    match test_list with
    | [] ->  []
    | h :: t ->
        let find_combinations_helper (rest_list :  (int * int) list) (curr_sum : int) :  (int * int) list =
                match rest_list with
                | [] ->  if curr_sum = 0 then [h] else []
                | x1 :: x2 :: x3 -> 
                        if curr_sum > 0 then
                            let tuple = (h , x1) in
                            if List.mem tuple rest_list then 
                                find_combinations_helper (rest_list @ [tuple]) (curr_sum - x1)
                            else
                                let tuple' = (x1, x2) in
                                if List.mem tuple' rest_list then
                                    find_combinations_helper (rest_list @ [tuple']) (curr_sum - x1 - x2)
                                else
                                    let tuple'' = (x2, x3) in
                                    if List.mem tuple'' rest_list then
                                        find_combinations_helper (rest_list @ [tuple'']) (curr_sum - x2 - x3)
                                    else
                                        []
                        else
                            []
        in
        find_combinations_helper t (fst h + snd h) @ (find_combinations (List.tl test_list))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
