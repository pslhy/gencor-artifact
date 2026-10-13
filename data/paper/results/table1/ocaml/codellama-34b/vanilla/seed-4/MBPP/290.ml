let rec max_length (list1 : int list list) :  int * int list = 
    (*
     * Find the list with the maximum length in a give list of lists
     * 
     * Use : max_length [[1]; [2; 2; 2]; [3; 3]]
     * Expected Output: (3, [3; 3])
     * 
     * 1. Compare the lengths of two lists
     * 2. If a list is longer than other, output it
     *)
    match list1 with
    | [] -> (0, [])
    | [head] -> (List.length head, head)
    | head :: tail ->
        let (length, longest) = max_length tail in
        if List.length head > length then (List.length head, head)
        else (length, longest)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the list of maximum length in a list of lists. *)
