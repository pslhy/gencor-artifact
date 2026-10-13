
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
    let rec findMinSubList lst = 
        match lst with
        | [] -> []
        | (x, y)::rest -> let min_rest = findMinSubList rest in
             if x < (fst (List.hd min_rest)) then (x, y)::min_rest 
             else (List.hd min_rest) :: (x, y)::min_rest
    in 
    if List.length test_list <= k then test_list
    else (List.map snd (findMinSubList (List.map (fun x -> x) test_list)))


(* Test cases *)
let test1 = min_k [("apple", 10); ("banana", 3); ("cherry", 7); ("date", 14)]; 2
let test2 = min_k [("hello", 5); ("world", 2); ("ocaml", 8); ("programming", 15)]; 3
let test3 = min_k [("a", 1); ("b", 2); ("c", 3); ("d", 4); ("e", 5)]; 5

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
