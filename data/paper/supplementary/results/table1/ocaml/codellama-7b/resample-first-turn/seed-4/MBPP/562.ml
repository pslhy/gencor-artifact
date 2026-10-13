let rec find_Max_Length (lst : int list list) : int = 
    match lst with 
    | head :: tail -> 
        (match tail with 
        |[] -> List.length head (* if lst has one list, it has the same length as its longest subList *)
        | head2::tail2 -> 
            let length_of_head2 = find_Max_Length (List.tl lst) in (* calling itself with tail minus the first elmenet *)
            if length_of_head2 > List.length head then length_of_head2 (* if the current tail list is longer than the list that was returned, the current is longest *)
            else List.length head) (*otherwise the previous list is the longest* )
    | [] -> 0




(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the longest sublists. *)
