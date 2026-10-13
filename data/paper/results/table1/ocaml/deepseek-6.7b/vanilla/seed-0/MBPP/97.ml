let rec frequency_lists (list1 : int list list) : (int * int) list =
    match list1 with 
    |[] -> []
    | hd :: tl -> List.map (fun x -> (x, List.length (List.filter (fun y -> y = x) tl))) (frequency_lists tl)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
