let rec unique_product (list_data : int list) : int = 
    let rec helper (seen : int list) (rest : int list) : int =
        match rest with
        | [] -> List.fold_left (fun acc x -> acc * x) 1 seen
        | h::t -> 
            if List.mem h seen then
                helper seen t
            else
                helper (h::seen) t
    in
    helper [] list_data


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to calculate the product of the unique numbers in a given list. *)
