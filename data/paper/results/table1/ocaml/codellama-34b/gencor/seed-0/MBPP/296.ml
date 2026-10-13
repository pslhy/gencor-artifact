
let rec get_Inv_Count (arr : int list) : int =
    match arr with
    | [] -> 0
    | x :: xs -> 
        let (left, right) = List.split xs
        (List.fold_left (fun acc y -> if y >= x then acc + 1 else acc) 0) (x :: xs)
        + get_Inv_Count (x :: xs)
    |> fun (left, right) ->
        (fst (get_Inv_Count xs)) + 1
        + (snd (get_Inv_Count xs) + 1)
    in
    get_Inv_Count []

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to count inversions in a list. *)
