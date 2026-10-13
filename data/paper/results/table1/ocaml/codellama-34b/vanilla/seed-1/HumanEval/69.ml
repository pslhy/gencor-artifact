let rec search (lst : int list) : int =
    let rec aux (acc : (int * int) list) (lst : int list) : (int * int) list =
        match lst with
        | [] -> acc
        | x :: xs ->
            let (cnt, _) = List.find_opt (fun (_, y) -> y = x) acc in
            if cnt >= x then
                aux ((cnt + 1, x) :: (List.remove_assoc x acc)) xs
            else
                aux acc xs
    in
    match aux [] lst with
    | [] -> -1
    | (cnt, x) :: _ -> x


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a non-empty list of positive integers. Return the greatest integer that is greater than *)
(*     zero, and has a frequency greater than or equal to the value of the integer itself. *)
(*     The frequency of an integer is the number of times it appears in the list. *)
(*     If no such a value exist, return -1. *)
(*     Examples: *)
(*     >>> search [4; 1; 2; 2; 3; 1] *)
(*     2 *)
(*     >>> search [1; 2; 2; 3; 3; 3; 4; 4; 4] *)
(*     3 *)
(*     >>> search [5; 5; 4; 4; 4] *)
(*     (-1) *)
