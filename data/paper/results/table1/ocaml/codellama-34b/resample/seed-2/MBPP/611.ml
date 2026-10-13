(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function which given a matrix represented as a list of lists returns the max of the n'th column. *)
let rec max_of_nth (test_list : int list list) (n : int) : int =
    match test_list with
    | [] -> 0
    | h :: t ->
        let x = List.nth h n in
        let y = max_of_nth t n in
        if x > y then x else y

let test () =
    let test_list = [[0; 1; 2]; [3; 4; 5]; [6; 7; 8]] in
    assert (max_of_nth test_list 1 = 4)

