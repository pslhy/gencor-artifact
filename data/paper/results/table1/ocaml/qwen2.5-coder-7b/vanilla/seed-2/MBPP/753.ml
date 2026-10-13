let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
    let rec find_min lst min_val min_key = 
        match lst with
        | [] -> (min_val, min_key)
        | (key, value)::rest -> 
            if value < min_val 
            then find_min rest value key
            else find_min rest min_val min_key
    in
    let rec build_list lst k acc = 
        if k = 0 then acc
        else 
            let (min_val, min_key) = find_min lst max_int ""
            in build_list (List.filter (fun (k, v) -> k <> min_key) lst) (k-1) ((min_key, min_val)::acc)
    in
    List.rev (build_list test_list k [])

(* Test cases *)
let test1 = min_k [("python", 20); ("java", 30); ("c++", 10); ("rust", 40)] 2;;
let test2 = min_k [("apple", 15); ("banana", 35); ("cherry", 5)] 3;;
let test3 = min_k [("a", 1); ("b", 2); ("c", 3)] 1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
