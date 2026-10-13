let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
  match dict1 with
  | [] -> []
  | (k, v)::tail -> 
      let smaller, bigger = List.partition (fun (k',v') -> v <= v') tail in
      (k, v) :: sort_counter smaller @ sort_counter bigger

let sort_dict (dict : (string * int) list) : (string * int) list =
  let sorted_keys = List.sort compare (List.map fst dict) in
  List.map (fun k -> (k, List.assoc k dict)) sorted_keys


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
