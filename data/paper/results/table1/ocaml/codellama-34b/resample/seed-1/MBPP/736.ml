(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to locate the left insertion point for a specified value in sorted order. https://www.w3resource.com/mlthon-exercises/data-structures-and-algorithms/mlthon-data-structure-exercise-24.php *)
let rec left_insertion (a : int list) (x : int) : int =
    match a with
    | [] -> 0
    | h :: t ->
        if h >= x then 0
        else 1 + left_insertion t x

