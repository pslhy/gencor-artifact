(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
let rec check_min_heap (arr : int list) : bool =
    match arr with
    | [] | [_] -> true
    | parent :: left :: right :: _ when parent <= left && parent <= right -> check_min_heap arr.(1) && check_min_heap arr.(2)
    | _ -> false

