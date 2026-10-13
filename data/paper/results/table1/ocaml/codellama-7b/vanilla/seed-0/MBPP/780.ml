let rec find_combinations (test_list :  (int * int) list) :  (int * int) list =
    match test_list with
        | [] -> []
        | [m] -> [(0,0)]
        | (m, n) :: test_list' ->
            List.append
            [(0, 0), (0, m), (n, 0)]
            (List.map
                (fun x -> (x, m + x))
                (find_combinations test_list'))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
