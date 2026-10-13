let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  match (dict1, dict2, dict3) with
  | (_, _, []) -> dict1 @ dict2
  | (_, [], _) -> dict1 @ dict3
  | ([], _, _) -> dict2 @ dict3
  | ((k1, v1) :: t1, ((k2, v2) :: t2, ((k3, v3) :: t3), ((k4, v4) :: t4)) ->
      if k1 = k2 && k1 = k3 then
        (k1, v1) :: merge_dictionaries_three t1 t2 t3
      else if k2 = k3 then
        (k2, v2) :: merge_dictionaries_three t1 t3 t4
      else
        (k3, v3) :: merge_dictionaries_three t1 t2 t4
  | ((k1, v1) :: t1, ((k2, v2) :: t2, (_, _) :: t3), _)
  | ((k1, v1) :: t1, (_, (_ :: _) :: t2), _)
  | ((k1, v1) :: t1, (_, _), _) ->
      (k1, v1) :: merge_dictionaries_three t1 t2 t3
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) =
  List.fold_left (fun acc (k, v) -> acc @ [(k, v)] @ merge_dictionaries_three [] [k, v] []) [] dict1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
