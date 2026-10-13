let rec freq_count (list1 : int list) : (int * int) list = 
  let rec helper (lst : int list) (acc : (int * int) list) : (int * int) list =
    match lst with
    | [] -> acc
    | h::t -> 
        let found = List.find_opt (fun (x, _) -> x = h) acc in
        match found with
        | Some (_, count) -> helper t ((h, count + 1)::(List.remove_assoc h acc))
        | None -> helper t ((h, 1)::acc)
  in
  helper list1 []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to get the frequency of all the elements in a list, returned as an association list. *)
