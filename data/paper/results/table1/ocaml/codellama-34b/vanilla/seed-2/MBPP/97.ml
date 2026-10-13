let rec frequency_lists (list1 : int list list) : (int * int) list =
    match list1 with
    | [] :: _ -> []
    | h :: t ->
        let (unique, counts) = List.fold_left (fun (acc1, acc2) x ->
            if List.mem x acc1 then
                (acc1, acc2 + 1)
            else
                (x :: acc1, 1)
        ) ([], 0) h in
        let () = frequency_lists t in
        unique :: counts


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
