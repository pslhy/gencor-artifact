let rec group_tuples (input : string list list) : string list list =
    match input with
    | [] -> []
    | x :: xs ->
            let first_list = List.hd x in
            let new_list = List.flatten (List.map (fun x -> List.assoc first_list (List.combine x [first_list])) input) in
            (new_list :: group_tuples (xs))

let first_common_element = function
| [] -> raise (Invalid_argument "List is empty")
| l ->  List.hd (List.hd (group_tuples l))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
