let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list = 
  let rec sort_list lst = 
    List.fold_left (fun acc x -> List.fold_left (fun acc y -> if x > y then x :: acc else y :: acc) acc lst) [] lst 
  in 
  let rec take k lst = 
    match k, lst with 
    | _, [] | 0, _ -> []
    | k, x::xs -> x :: take (k-1) xs 
  in 
  sort_list test_list |> take k

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
