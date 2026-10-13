
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
  let sorted_list = List.sort (fun a b -> compare (snd a) (snd b)) test_list in
  let top_k_list = List.rev (List.tl (List.rev_map List.tl (List.rev_map List.tl sorted_list))) in
  List.rev sorted_list :: top_k_list;;
  
  
  (* Test Cases *)
let test1 = min_k [("Russia", 1)] 1;; (* should return [("Russia",1)] *)
let test2 = min_k [("Russia", 1); ("USA", 2)] 2;;                    (* should return [("USA",2); ("Russia",1)] *)
let test3 = min_k [("Russia", 1); ("USA", 2); ("Canada", 3)] 3;;     (* should return [("Canada",3); ("USA",2); ("Russia",1)] *)
let test4 = min_k [("Russia", 1); ("USA", 2); ("Canada", 3)] 2;;     (* should return [("Canada",3); ("USA",2)] *)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
