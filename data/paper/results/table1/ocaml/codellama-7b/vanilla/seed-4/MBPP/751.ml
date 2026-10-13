let rec check_min_heap (arr : int list) : bool = 
    (* base case: if the list has only one element, it is a min heap *)
    if List.length arr = 1 then 
         true 
    else 
        (* else, check if the left and right child of the parent node are min heaps *)
        let left = List.nth arr ((List.length arr - 1) / 2) in 
        let right = List.nth arr (((List.length arr - 1) / 2) + 1) in 
        check_min_heap left && check_min_heap right && 
        (* Additionally, check if the parent node is less than or equal to its children *)
        (List.hd arr) <= left && (List.hd arr) <= right

and check_list (arr : int list) : bool = 
    let rec recursive_check (arr : int list) : bool = 
        match arr with 
        | [] -> true  
        | [head] -> true 
        | head :: tail -> recursive_check tail && check_min_heap head 
    in 
    recursive_check arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
