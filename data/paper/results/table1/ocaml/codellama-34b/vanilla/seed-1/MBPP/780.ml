let rec find_combinations (test_list :  (int * int) list) :  (int * int) list =
    let rec aux (acc :  (int * int) list) (test_list' :  (int * int) list) =
        match test_list' with
        | [] -> acc
        | (x, y) :: test_list' ->
            let new_combinations = List.fold (fun acc (x', y') -> (x + x', y + y') :: acc) acc test_list'
            in aux (new_combinations @ acc) test_list'
    in aux [] test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
