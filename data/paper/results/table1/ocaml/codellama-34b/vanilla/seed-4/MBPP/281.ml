let rec all_unique (test_list : int list) : bool = 
    (* base case: empty list with all unique elements *)
    let rec base_case =
        match test_list with
        (* if list is empty, return true *)
        | [] -> true
        (* if list is not empty but has only one element, return true *)
        | head :: [] -> true
        (* if list has more than one element, return false *)
        | _ -> false
    (* recursive case: list has at least one duplicate element *)
    let rec recur_case (test_list : int list) : bool = 
        (* get the current element and the length of the list *)
        let current_element = List.hd test_list
        let current_length = List.length test_list
        (* if length of list is greater than 1, return false *)
        if current_length > 1 then
            (* check if current element appears in the rest of the list *)
            let rest_list = List.tl test_list
            if List.mem current_element rest_list then
                (* if it appears, return false *)
                false
            else
                (* if it doesn't appear, recursively call the function on the rest of the list *)
                recur_case rest_list
        else
            (* if length of list is 1, return true *)
            true
    (* call the base case or the recursive case based on the length of the input list *)
    match test_list with
    | [] -> base_case
    | _ -> recur_case test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check if the elements of a given list are unique or not. *)
