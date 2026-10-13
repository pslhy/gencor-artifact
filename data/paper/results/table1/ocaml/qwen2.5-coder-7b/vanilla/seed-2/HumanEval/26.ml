let rec remove_duplicates (numbers : int list) : int list = 
    let count acc x = 
        if List.mem x acc then (x, true) :: acc else (x, false) :: acc 
    in
    let rec filter acc = function
        | [] -> List.rev acc
        | x::xs -> 
            match List.find_opt (fun (_, seen) -> seen) acc with
            | Some (_, true) -> filter acc xs
            | _ -> filter (count acc x :: acc) xs 
    in
    filter [] numbers


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     From a list of integers, remove all elements that occur more than once. *)
(*     Keep order of elements left the same as in the input. *)
(*     >>> remove_duplicates [1; 2; 3; 2; 4] *)
(*     [1; 3; 4] *)
