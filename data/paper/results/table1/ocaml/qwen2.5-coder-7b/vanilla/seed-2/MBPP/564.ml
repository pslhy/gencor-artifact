let rec count_Pairs (arr : int list) (n : int) : int = 
    if n <= 1 then 0
    else 
        let count_rest = count_Pairs (List.tl arr) (n - 1) in
        let count_equal = n - (List.length (List.filter (fun x -> x = List.hd arr) (List.tl arr))) in
        (n - 1 - count_equal) + count_rest
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal. *)
