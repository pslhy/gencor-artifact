(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in an association list and integer n and filters the association list to only include entries with values greater than or equal to n. *)
let rec dict_filter (dict : (string * int) list) (n : int) : (string * int) list = 
    (* base case: if the dict is empty, return an empty list *)
    if dict = [] then
        []
    (* recursively process the dict *)
    else
        (* get the first element of the dict *)
        let (key, value) = List.hd dict in
        (* recursion step: add the element to the filtered list if its value is greater than or equal to n, and process the rest of the dict *)
        if value >= n then
            (key, value) :: dict_filter (List.tl dict) n
        else
            dict_filter (List.tl dict) n

