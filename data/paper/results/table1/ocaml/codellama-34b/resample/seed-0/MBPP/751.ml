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
    | [] -> true
    | _ ->
        let rec check_helper (idx : int) : bool =
            idx < list_length(arr) - 1
            && arr.(idx) <= arr.((2*idx) + 1)
            && arr.(idx) <= arr.((2*idx) + 2)
            && check_helper (2*idx)
            && check_helper (2*idx + 1)
        in
        check_helper 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:19: Unbound value "list_length" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_min_heap (arr : int list) : bool =
    match arr with
    | [] -> true
    | _ ->
        let len = List.length arr in
        let rec check_helper (idx : int) : bool =
            idx < len - 1
            && arr.(idx) <= arr.((2*idx) + 1)
            && arr.(idx) <= arr.((2*idx) + 2)
            && check_helper (2*idx)
            && check_helper (2*idx + 1)
        in
        check_helper 0

