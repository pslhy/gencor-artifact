
let rec frequency_lists (list1 : int list list) : (int * int) list =
    match list1 with
    | [] -> []
    | h :: t -> 
        let (l, m) = frequency_lists t in
        let l = List.map (fun x -> (x, List.length (List.filter (fun y -> x = y) h))) l in
        (h, 1 + List.fold_left (fun acc (x, y) -> if x = h then y else acc) 0 l) :: l
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
