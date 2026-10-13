let rec shell_sort (my_list : int list) : int list = 
    let length = List.length my_list in
    let rec insert_gap gap lst =
        let rec insert acc list =
            match list with
            | [] -> acc
            | [x] -> (x, acc)
            | h1::h2::t -> 
                if h1 > h2 then 
                    insert ((h2, h1)::acc) t
                else 
                    insert ((h1, acc)) (h2::t)
        in
        let rec apply_gap acc gap lst =
            match lst with
            | [] -> acc
            | [x] -> (x, acc)
            | h1::h2::t -> 
                apply_gap (insert acc (h2::t)) (h1::acc)
        in
        if gap > length then lst else apply_gap [] gap lst
    in
    let rec loop gap lst =
        if gap = 1 then lst else loop (gap / 2) (insert_gap gap lst)
    in
    loop (length / 2) my_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list by using shell sort. *)
