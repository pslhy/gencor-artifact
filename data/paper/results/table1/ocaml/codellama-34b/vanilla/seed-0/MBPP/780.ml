let rec find_combinations (test_list :  (int * int) list) :  (int * int) list =
    match test_list with
    | [] -> []
    | (m, n) :: rest ->
        let main_list = (m+n) :: rest
        let rec go acc (v : 'a) (r : int) (acc_r : 'b list) : 'b list =
            if r = 0 then acc::acc_r
            else if v = [] then []
            else
                let (m, n) = v in
                let list = (m+n) :: rest
                go list r (acc::acc_r)
        in
        go [] main_list (List.length rest) [] @ find_combinations rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
