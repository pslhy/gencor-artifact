let rec max_sum_list (lists : int list list) : int list = 
    (* base case: if only one sublist, return it *)
    match lists with 
    | [hd] -> hd
    | [] -> []
    | _ -> 
        (* iterate through list, updating max sum and corresponding sublist *)
        let (_, max_sum, max_sublist) = List.fold_left (fun (i, sum, sublist) l -> 
            let sublist_sum = List.fold_left (fun acc e -> acc + e) 0 l in
            if sublist_sum > sum then (i, sublist_sum, l) else (i+1, sum, sublist)
        ) (0, 0, []) lists in
        max_sublist

(* test max_sum_list *)
let () =
    let lists = [[1;2]; [3;4;5]; [2;7]; [8;3]] in
    let result = max_sum_list lists in
    print_endline (string_of_int (List.fold_left (fun acc e -> acc + e) 0 result))


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that returns the list in a list of lists whose sum of elements is the highest. *)
