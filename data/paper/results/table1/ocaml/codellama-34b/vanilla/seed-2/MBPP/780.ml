let rec find_combinations (test_list :  (int * int) list) :  (int * int) list =
    match test_list with 
    | [] -> []
    | (_,0)::_ -> find_combinations (List.filter (fun (_,i) -> i > 0) test_list)
    | (sum,(Frequency as freq))::my_list ->
              let y = find_combinations (List.filter (fun (x,i) -> x + sum = freq) my_list) 
              in let z = find_combinations (List.filter (fun (x,i) -> x + sum < freq) my_list) 
              in match z with
                 | [] -> y
                 | _ -> (sum,freq)::y


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/mlthon-combinations-of-sum-with-tuples-in-tuple-list/ *)
