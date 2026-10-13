(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
    match dict1 with
        | [] -> []
        | (key, value) :: remainder -> 
            let smaller = sort_counter (List.filter (fun (k, _) -> k > value) remainder)
                in (key, value) :: smaller

