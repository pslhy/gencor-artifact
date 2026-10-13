(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and length n, and generates all combinations (with repetition) of the elements of the list and returns a list with a list for each combination. *)
let rec combinations_colors (l : string list) (n : int) : string list list = 
    (* base case: if n is 0, there should be only one combination *)
    if n = 0 then [[]] (* empty list *)
    (* base case: if the list is empty, there should be no combinations *)
    else if l = [] then []
    (* general case: recursion + combination of the first element + recursive call for the rest of the list *)
    else (List.map (fun x -> [l]) l) @ combinations_colors (List.tl l) (n - 1)

