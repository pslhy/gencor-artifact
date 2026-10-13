
let rec order_by_points (nums : int list) : int list = 
    (* base case: empty list with no elements to sort *)
    match nums with
    | [] -> []
    | _ -> 
        (* get the sum of the digits for each element in the list *)
        let sum_of_digits (num : int) : int = 
            abs num |> List.of_seq |> List.map(fun x -> x * x) |> List.fold_left(fun a e -> a + e) 0
        in
        (* sort the list based on the sum of the digits *)
        List.sort(
            nums,
            fun x y -> compare(sum_of_digits(abs(List.nth(nums, 0))), sum_of_digits(abs(List.nth(nums, 0) - 1)))
        )

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
