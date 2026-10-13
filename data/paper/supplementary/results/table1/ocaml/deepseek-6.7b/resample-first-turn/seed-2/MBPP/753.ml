let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
  let sorted_list = List.sort (fun (_, a) (_, b) -> a - b) test_list in
    List.rev (List.rev_take k sorted_list)
      
(* Test Cases *)
let test1 = min_k [("one", 1); ("two", 2); ("three", 3); ("four", 4); ("five", 5)] 3
let test2 = min_k [("one", 5); ("two", 1); ("three", 4); ("four", 2); ("five", 3)] 2
let test3 = min_k [("one", 10); ("two", 20); ("three", 30)] 1
let test4 = min_k [] 2
let test5 = min_k [("one", 1)] 1 


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
