let rec pairs_sum_to_zero (l : int list) : bool = 
    (* base case: if the list has only one element, return false *)
    if List.length l = 1 then
        false
    else
        (* recursive case: check if there exist two distinct elements in the list that sum to zero *)
        let rec exists_distinct_pair (l : int list) : bool = 
            (* base case: if the list has only one element, return false *)
            if List.length l = 1 then
                false
            else
                (* if the current element is not equal to the previous element, then check if the sum of the current and
                previous elements is zero *)
                if l.[0] <> l.[1] then
                    if l.[0] + l.[1] = 0 then
                        true
                    else
                        exists_distinct_pair (List.tl l)
                else
                    exists_distinct_pair (List.tl l)
        in
        exists_distinct_pair l
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     pairs_sum_to_zero takes a list of integers as an input. *)
(*     it returns true if there are two distinct elements in the list that *)
(*     sum to zero, and false otherwise. *)
(*     >>> pairs_sum_to_zero [1; 3; 5; 0] *)
(*     false *)
(*     >>> pairs_sum_to_zero [1; 3; (-2); 1] *)
(*     false *)
(*     >>> pairs_sum_to_zero [1; 2; 3; 7] *)
(*     false *)
(*     >>> pairs_sum_to_zero [2; 4; (-5); 3; 5; 7] *)
(*     true *)
(*     >>> pairs_sum_to_zero [1] *)
(*     false *)
