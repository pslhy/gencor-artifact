let rec count_reverse_pairs (test_list : string list) : int = 
    match test_list with
    | [] -> 0
    | current :: remaining ->
        let reverse = String.rev current in
        let count = count_reverse_pairs remaining in
        let pair_count = if reverse = current then 1 else 0 in
        count + pair_count
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/mlthon-program-to-count-the-pairs-of-reverse-strings/ *)
