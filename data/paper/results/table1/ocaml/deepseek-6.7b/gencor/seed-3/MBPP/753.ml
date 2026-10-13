
let rec min_k (test_list :  (string * int) list) (k : int) :  (string * int) list =
    List.sort (fun (_, v1) (_, v2) -> Stdlib.compare v1 v2) test_list
    |> fun sorted_list -> List.rev (List.rev_map snd (List.rev (List.rev_map List.tl sorted_list)))
    |> List.rev
    |> List.rev_map (fun x -> (List.hd x, List.hd (List.tl x)))
    |> List.rev
    |> List.rev
    |> List.split
    |> fun (key, value) -> (List.split (List.split (List.split (List.split key, value) )));;

(* Test cases *)
let test_list = [("person1", 23), ("person2", 45), ("person3", 17), ("person4", 33)];;
let k = 2;;
min_k test_list k;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find minimum k records from tuple list. https://www.geeksforgeeks.org/mlthon-find-minimum-k-records-from-tuple-list/ - in this case a verbatim coml of test cases *)
