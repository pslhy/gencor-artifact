
let rec merge_dictionaries_three (dict1 : (string * string) list) (dict2 : (string * string) list) (dict3 : (string * string) list) : (string * string) list =
  match (dict1, dict2, dict3) with
  | (_, _, []) -> dict1 @ dict2
  | (_, [], _) -> dict1 @ dict3
  | ([], _, _) -> dict2 @ dict3
  | ((k1, v1) :: t1, ((k2, v2) :: t2, ((k3, v3) :: t3), ((k4, v4) :: t4))
      | None whenk1)
      | Some (k1, v1) -> (
        match (dict1, dict2, dict3) with
        | (_, _, [(k4, v4) :: t4]) when k4 = k4 -> Some ((k4, v4) :: t4)
        | ([(k4, v4) :: t4], _, _) when k4 = k4 -> Some ((k4, v4) :: t4)
        | (_, [(k4, v4) :: t4], _) when k4 = k4 -> Some ((k4, v4) :: t4)
        | _ -> None
      )
  | _ -> None

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to merge three dictionaries into a single association list. *)
