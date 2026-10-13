let rec max_subarray_product (arr : int list) : int = 
  let rec helper max_so_far min_so_far current_max current_min lst = 
    match lst with
    | [] -> current_max
    | x::xs -> 
        let new_max = max x (max (current_max * x) (current_min * x)) in
        let new_min = min x (min (current_max * x) (current_min * x)) in
        helper new_max new_min max_so_far min_so_far xs
  in
  helper 1 1 (List.hd arr) (List.hd arr) (Array.to_list (Array.of_list arr))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum product sublist of the given list. *)
