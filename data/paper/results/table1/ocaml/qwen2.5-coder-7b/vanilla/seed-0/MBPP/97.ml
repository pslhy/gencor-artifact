let rec frequency_lists (list1 : int list list) : (int * int) list = 
  let rec flatten lst acc = match lst with
    | [] -> List.rev acc
    | h::t -> flatten t (h @ acc)
  in
  let flattened_list = flatten list1 [] in
  let rec count acc lst = match lst with
    | [] -> acc
    | h::t -> 
        let new_acc = 
          if List.mem_assoc h acc then
            (List.map (fun (x, y) -> if x = h then (x, y + 1) else (x, y)) acc)
          else (h, 1) :: acc
        in
        count new_acc t
  in
  count [] flattened_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
