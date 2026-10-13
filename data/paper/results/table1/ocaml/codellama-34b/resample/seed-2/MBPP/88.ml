(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
let rec freq_count (list1 : int list) : (int * int) list =
    match list1 with
    | [] -> []
    | (x::xs) ->
        let (key, value) = x in
        let count = List.fold_left (fun acc (key, value) -> if key = x then acc + 1 else acc) 0 in
        (x, count) :: freq_count xs

