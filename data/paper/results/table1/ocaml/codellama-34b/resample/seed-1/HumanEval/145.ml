(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec order_by_points (nums : int list) : int list =
    let sum_digits (n : int) : int =
        let rec sum_digits_aux (n : int) (acc : int) : int =
            if n = 0 then acc else
            sum_digits_aux (n / 10) (acc + (n mod 10))
        in sum_digits_aux n 0
    in

    let rec sort (nums : int list) : int list =
        match nums with
        | [] -> []
        | h :: t ->
            let smaller, larger = List.partition (fun x -> (sum_digits x) <= (sum_digits h)) t in
            (sort smaller) @ [h] @ (sort larger)
    in sort nums

