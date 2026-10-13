let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  match (dict1, dict2, dict3) with
  | ([], [], []) -> []
  | (hd1::tl1, hd2::tl2, hd3::tl3) ->
     (match (hd1, hd2, hd3) with
     | ((k1, v1), (k2, v2), (k3, v3)) ->
        if (k1 = k2) && (k2 = k3) then
          ((k1, (v1 ^ " " ^ v2 ^ " " ^ v3))) :: merge_dictionaries_three tl1 tl2 tl3
        else if (k1 = k2) then
          ((k1, (v1 ^ " " ^ v2))) :: merge_dictionaries_three tl1 tl2 tl3
        else if (k2 = k3) then
          ((k2, (v2 ^ " " ^ v3))) :: merge_dictionaries_three tl1 tl2 tl3
        else
          ((k1, v1)) :: ((k2, v2)) :: ((k3, v3)) :: merge_dictionaries_three tl1 tl2 tl3)
  | _ -> failwith "dictionaries should be of equal length"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
