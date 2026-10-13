
let rec group_tuples (input : string list list) : string list list = 
    (* base case: if only one list is left, return it as is *)
    if List.length input = 1 then input 
    else 
        (* get the first element of each sublist and store it in a new list *)
        let rec get_first_element (sublist : string list) = 
            match sublist with
            | [] -> []
            | x :: xs -> x :: get_first_element xs
        (* helper function to group tuples by key *)
        in let group_tuples (groups : string list) : string list = 
            (* create a new list containing the first element of each sublist *)
            let first_elements = get_first_element groups
            (* add all elements of each sublist to a list and return the resulting list of lists *)
            in List.map (fun sublist -> List.filter (fun x -> List.mem x first_elements) sublist) groups
        (* iterate through the input until a common first element is found *)
        in List.find_opt (fun sublist -> group_tuples sublist <> []) input |> Option.map (fun sublist -> group_tuples sublist |> List.hd) |> Option.get

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find common first element in given list of lists. *)
