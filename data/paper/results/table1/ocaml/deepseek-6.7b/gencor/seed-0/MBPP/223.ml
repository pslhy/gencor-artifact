
let rec is_majority (arr : int list) (n : int) (x : int) : bool =
    if n = 0 then false
    else
        let middle = n / 2 in
        let mid_val = List.nth arr middle in
        match mid_val = x, n mod 2 with
        |  true, 0 -> true
        |  true, _ ->
            let arr_size_left_half = middle in
            let arr_size_right_half = n - middle - 1 in
            is_majority (List.filter (fun y -> y <> x) arr) arr_size_left_half x 
            && is_majority (List.filter (fun y -> y <> x) arr) arr_size_right_half x
        |  false, _ ->
            match mid_val with
            |  _ when mid_val < x ->
                let arr_size_right_half = n - middle - 1 in
                is_majority arr_size_right_half x (List.tl arr)
            |  _ when mid_val > x ->
                let arr_size_left_half = middle in
                is_majority arr_size_left_half x (List.rev (List.tl (List.rev arr)))
            |  _ -> false

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes in a sorted list, its length (n), and an element and returns whether the element is the majority element in the given sorted list. (The majority element is the element that occurs more than n/2 times.) *)
