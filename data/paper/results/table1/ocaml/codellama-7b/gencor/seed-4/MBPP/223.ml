
let rec is_majority (arr : int list) (n : int) (x : int) : bool = 
    (* base case: if the list is empty or there are less than two elements in the list *)
    if n < 2 then false 
    else 
        (* get the element at the middle index of the list *)
        let mid_idx = n / 2 in 
        let mid_elem = List.nth arr mid_idx in 
        (* compare the element to the middle element *)
        if x = mid_elem then 
            (* if the element is equal to the middle element *)
            if n mod 2 = 0 then
                (* if there is a tie in the middle element, we need to check the surrounding elements *)
                x = (List.nth arr (mid_idx - 1))||x = List.nth arr (mid_idx + 1) 
            else 
                (* if there is no tie, the middle element is the majority element *)
                true 
        else 
            (* if the element is not equal to the middle element, we need to check the surrounding elements *)
            is_majority arr (mid_idx) x

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
