let rec pancake_sort (nums : int list) : int list = 
    (* base case: ignore empty and single-element lists *)
    match nums with
    | [] | [_] -> nums
    | _ -> 
        (* get the maximum element and its index *)
        let max_index = nums |> List.mapi (fun i x -> (i, x)) |> List.fold_left (fun (i, _) (j, x) -> if x > nums.get i then (j, x) else (i, x)) (0, 0) |> fst in
        (* flip the list to bring the maximum element to the top *)
        let flipped = nums |> List.rev in
        (* recurse on the sublist with the maximum element at the top *)
        let sorted = flipped |> List.split_at (max_index + 1) |> fst in
        (* prepend the sorted sublist to the unsorted portion of the original list *)
        let result = sorted @ nums
(* return the sorted list *)
result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
