let rec frequency_lists (list1 : int list list) : (int * int) list = 
  let rec helper (lst : int list) (acc : (int * int) list) : (int * int) list =
    match lst with
    | [] -> acc
    | h::t -> 
        let updated_count = 
          match List.find_opt (fun (x, _) -> x = h) acc with
          | Some (_, count) -> (h, count + 1)
          | None -> (h, 1)
        in
        helper t (List.map (fun (x, c) -> if x = h then updated_count else (x, c)) acc)
  in
  List.fold_left (fun acc l -> helper l acc) [] list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
