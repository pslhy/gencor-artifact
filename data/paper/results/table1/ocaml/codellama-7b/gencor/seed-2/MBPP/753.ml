
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    match test_list with
    | [] ->  []
    | h :: t ->
        let (key, value) = h in
        let left = min_k t k in
        let right = key, value in
        let joined = left @ [right] in
        let sorted = List.sort (fun (_, x) (_, y) -> x - y) joined in
        let filtered = List.filter (fun (_, x) -> x <= k) sorted in
        filtered

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
