let rec large_product (nums1 : int list) (nums2 : int list) (n : int) : int list = 
    let rec max_pair (l1 : int list) (l2 : int list) : int * int =
        match l1, l2 with
        | [], _ | _, [] -> failwith "Lists should not be empty"
        | h1::t1, h2::t2 -> 
            let p1, p2 = h1 * h2, h1 * t2 |> List.hd, t1 |> List.hd * h2, t1 |> List.hd * t2 |> List.hd in
            if p1 >= p2 && p1 >= p3 && p1 >= p4 then (h1, h2)
            else if p2 >= p1 && p2 >= p3 && p2 >= p4 then (h1, t2 |> List.hd)
            else if p3 >= p1 && p3 >= p2 && p3 >= p4 then (t1 |> List.hd, h2)
            else (t1 |> List.hd, t2 |> List.hd)
    in
    let rec collect_max n productions maxs = 
        if n = 0 then maxs
        else let max_pair = List.fold_left (fun acc p -> max acc (fst p * snd p)) Int.min_int productions in
             let new_maxs = maxs @ [fst max_pair * snd max_pair] in
             let new_productions = List.filter (fun p -> fst p * snd p <> max_pair) productions in
             collect_max (n - 1) new_productions new_maxs
    in
    let initial_productions = List.map (fun x -> max_pair [x] nums2) nums1 in
    collect_max n initial_productions []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the specified number of largest products from two given lists, selecting one factor from each list. *)
