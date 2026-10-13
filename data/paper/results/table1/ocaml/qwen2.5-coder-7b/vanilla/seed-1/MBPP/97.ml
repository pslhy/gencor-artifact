let rec frequency_lists (list1 : int list list) : (int * int) list = 
  let rec count acc lst =
    match lst with
    | [] -> acc
    | h::t ->
        let new_acc =
          if List.mem_assoc h acc then
            let old_count = List.assoc h acc in
            List.remove_assoc h acc @ [ (h, old_count + 1) ]
          else
            (h, 1) :: acc
        in
        count new_acc t
  in
  List.fold_left count [] list1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
