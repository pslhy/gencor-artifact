(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec next_smallest (lst : int list) : int option =
    let rec aux min1 min2 = function
        | x :: _ when x < min1 && x >= min2 -> Some(x)
        | x :: _ when x = min1 && x >= min2 -> None
        | x :: xs -> aux min1 (if x < min2 then x else min2) xs
        | [] -> Some(None)
    in
    match lst with
    | [] -> Some(None)
    | x :: xs -> aux x (List.fold_left (fun acc y -> if y < acc then y else acc) x xs) xs

