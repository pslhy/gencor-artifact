let rec order_by_points (nums : int list) : int list = 
    let sum_digits n = 
        let rec aux n acc = 
            if n = 0 then acc
            else aux (n / 10) (acc + abs (n mod 10))
        in aux (abs n) 0
    in
    nums
    |> List.mapi (fun i x -> (i, x, sum_digits x))
    |> List.sort (fun (_, _, a) (_, _, b) -> compare a b)
    |> List.map snd


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
