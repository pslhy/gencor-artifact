let rec pancake_sort (nums : int list) : int list =
    let rec aux (nums : int list) (flipped : bool) : int list =
        match nums with
        | [] -> []
        | [x] -> [x]
        | x :: xs ->
            let max_idx = List.hd (List.rev (List.mapi (fun i y -> (i, y)) nums)) in
            if flipped then
                (max_idx, x) :: aux (List.tl nums) false
            else
                let rev_xs = List.rev (List.tl nums) in
                (max_idx, x) :: aux rev_xs true
    in
    aux nums false


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
