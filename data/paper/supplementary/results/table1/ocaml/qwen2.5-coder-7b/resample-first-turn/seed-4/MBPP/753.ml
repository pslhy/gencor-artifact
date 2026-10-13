let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
    let rec findMinSubList lst = 
        match lst with
        | [] -> []
        | (x, y)::rest -> let min_rest = findMinSubList rest in
             if x < (fst (List.min_element min_rest)) then (x, y)::min_rest 
             else min_rest
    in
    let rec takeK lst cnt acc =
        if cnt = 0 then acc
        else match lst with
        | [] -> acc
        | (x, y)::rest -> takeK rest (cnt - 1) ((x, y)::acc)
    in
    let minSubList = findMinSubList test_list in
    let result = takeK minSubList k [] in
    List.rev result;;

(* Test Cases *)
let test1 = min_k [("apple", 5); ("banana", 2); ("cherry", 3); ("date", 1)] 2;;
let test2 = min_k [("cat", 7); ("dog", 2); ("elephant", 5); ("frog", 4)] 3;;
let test3 = min_k [("sun", 15); ("moon", 2); ("star", 1); ("comet", 3)] 1;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
