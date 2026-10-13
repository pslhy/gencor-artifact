
let rec next_smallest (lst : int list) : int option = 
    let rec find_two_min (lst : int list) (min1 : int option) (min2 : int option) : int option * int option =
        match lst with
        | [] -> (min1, min2)
        | x::xs ->
            if min1 = None || (Some x) < (Option.get min1) then
                find_two_min xs (Some x) min1
            else if (Some x) <> (Option.get min1) && (min2 = None || (Some x) < (Option.get min2)) then
                find_two_min xs min1 (Some x)
            else
                find_two_min xs min1 min2
    in
    match (find_two_min lst None None) with
    | (Some _, Some x) -> Some x
    | _ -> None

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     You are given a list of integers. *)
(*     Write a function next_smallest() that returns the 2nd smallest element of the list. *)
(*     Return None if there is no such element. *)
(*     >>> next_smallest [1; 2; 3; 4; 5] *)
(*     Some(2) *)
(*     >>> next_smallest [5; 1; 4; 3; 2] *)
(*     Some(2) *)
(*     >>> next_smallest [] *)
(*     Some(None) *)
(*     >>> next_smallest [1; 1] *)
(*     Some(None) *)
