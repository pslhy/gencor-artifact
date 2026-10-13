let rec left_insertion (a : int list) (x : int) : int = 
    match a with 
    | head :: tail -> 
        if head >= x then length a + 1
        else 1 + left_insertion tail x
    | [] -> 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to locate the left insertion point for a specified value in sorted order. https://www.w3resource.com/mlthon-exercises/data-structures-and-algorithms/mlthon-data-structure-exercise-24.php *)
