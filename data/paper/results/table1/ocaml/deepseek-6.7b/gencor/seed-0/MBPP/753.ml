
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    let rec min_helper (list1 :  (string * int) list ) (list2 :  (string * int) list) (k : int)  = 
        match list1, list2 with
        | [], _ -> []
        | _, [] -> []
        | h1::t1, h2::t2 -> if (snd h1) < (snd h2) then h1::(min_helper t1 list2 (k-1)) else h2::(min_helper t1 list2 (k-1))
    in
    let sorted_list = List.sort (fun a b -> Parsing.peek_val a - Parsing.peek_val b) test_list
    in 
    if k > (List.length test_list) then test_list
    else
        min_helper sorted_list sorted_list k

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
