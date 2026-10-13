(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given list of integers, return list in strange order. *)
(*     Strange sorting, is when you start with the minimum value, *)
(*     then maximum of the remaining integers, then minimum and so on. *)
(*     Examples: *)
(*     >>> strange_sort_list [1; 2; 3; 4] *)
(*     [1; 4; 2; 3] *)
(*     >>> strange_sort_list [5; 5; 5; 5] *)
(*     [5; 5; 5; 5] *)
(*     >>> strange_sort_list [] *)
(*     [] *)
let rec strange_sort_list (lst : int list) : int list =
    match lst with
    | [] -> []
    | _ -> let (min, max) = get_min_max_element lst in
        [min] @ strange_sort_list (List.filter (fun x -> x <> min) lst) @ [max]

and get_min_max_element (lst : int list) : int * int =
    match lst with
    | h1 :: h2 :: _ -> (min h1 h2, max h1 h2)
    | _ -> failwith "Invalid input"

let () =
    print_endline (strange_sort_list [1; 2; 3; 4])
    print_endline (strange_sort_list [5; 5; 5; 5])
    print_endline (strange_sort_list [])

