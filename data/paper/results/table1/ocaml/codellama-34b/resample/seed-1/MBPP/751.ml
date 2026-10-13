(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
let rec check_min_heap (arr : int list) : bool =
    let n = List.length arr in
    let left (i : int) = 2 * i + 1 in
    let right (i : int) = 2 * i + 2 in
    let rec check_heap (i : int) : bool =
        (i >= n) ||
        (arr.(i) <= arr.(left i) && arr.(i) <= arr.(right i) &&
        check_heap (left i) && check_heap (right i)) in
    if n = 0 then true
    else check_heap 0

