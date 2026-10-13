let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
    (* base case: k = 1 *)
    if k = 1 then 
        (* extract the minimum element *)
        (* NOTE: assumes list is not empty *)
        [List.fold_left (fun (x, y) (x', y') ->
            if y >= y' then (x', y') else (x, y)
        ) (test_list)]
    else 
        (* construct list of minimum k-1 elements from current list *)
        let rec aux (test_list' : (string * int) list) : ((string * int) list)
        let aux (test_list', k - 1) : (string * int) list
        List.fold_left (fun min_lists



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
