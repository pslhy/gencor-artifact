let rec max_subarray_product (arr : int list) : int = 
    (* base case: if the list has only one element, return the product of that element *)
    match arr with 
    | [x] -> x 
    | _ -> 
        (* find the maximum product of the current element and the rest of the subarray *)
        let max_product_so_far = List.fold_left (fun acc x -> acc * x) 1 arr in 
        (* find the maximum product of the previous elements and the current element *)
        let max_product_including_prev = List.fold_left (fun acc x -> max (acc * x) x) 0 arr in 
        (* return the maximum of the two maximum products found *)
        max max_product_so_far max_product_including_prev

let test () =
    assert (max_subarray_product [|1; 2; 3; 4; 5; 6|] = 60);
    assert (max_subarray_product [|2; 3; -5; -2|] = -10);
    assert (max_subarray_product [|1; 0; -1|] = 0);
    assert (max_subarray_product [||] = 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
