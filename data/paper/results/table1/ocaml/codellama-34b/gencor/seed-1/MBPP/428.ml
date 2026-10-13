
let rec shell_sort (my_list : int list) : int list =
    let rec insertion_sort (sorted_part : int list) (unsorted_part : int list) : int list = 
        match unsorted_part with
        | [] -> sorted_part
        | x :: xs ->
            let rec find_insertion_point (sorted_part : int list) (y : int) : int = 
                match sorted_part with
                | [] -> 0
                | z :: zs -> if z <= y then find_insertion_point zs y else 0
            in
            insertion_sort (insertion_sort (find_insertion_point sorted_part x) x) xs
    in
    match my_list with
    | [] -> []
    | [x] -> [x]
    | _ ->
        let h = List.length my_list / 2 in
        let (sorted_part, unsorted_part) = List.split my_list h in
        insertion_sort sorted_part unsorted_part

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
