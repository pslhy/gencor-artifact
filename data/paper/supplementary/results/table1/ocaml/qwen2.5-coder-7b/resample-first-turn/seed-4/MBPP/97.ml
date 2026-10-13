let rec frequency_lists (list1 : int list list) : (int * int) list = 
  let rec helper (list2 : int list) (acc : (int * int) list) : (int * int) list = 
    match list2 with
    | [] -> acc
    | x::xs -> 
      let updated_acc = 
        List.find_opt (fun (a, _) -> a = x) acc 
        |> Option.map (fun (_, count) -> (x, count + 1)) 
        |> Option.default (x, 1) 
        |> (fun (x, count) -> (x, count)::(List.filter (fun (a, _) -> a <> x) acc))
      in
      helper xs updated_acc
  in
  List.fold_left (fun acc lst -> helper lst acc) [] list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
