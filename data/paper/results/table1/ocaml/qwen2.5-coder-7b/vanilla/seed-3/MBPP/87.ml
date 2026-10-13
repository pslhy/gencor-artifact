let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list = 
  let merge_two_dicts dict1 dict2 = 
    let rec merge_into acc = function
      | [] -> List.rev acc
      | (k, v) :: tl -> 
          if List.mem_assoc k dict1 then merge_into acc tl else merge_into ((k, v) :: acc) tl
    in merge_into dict1 dict2
  in
  merge_two_dicts (merge_two_dicts dict1 dict2) dict3


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
