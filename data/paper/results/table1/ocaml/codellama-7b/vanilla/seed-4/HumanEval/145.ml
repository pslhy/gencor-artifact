let rec order_by_points (nums : int list) : int list =
  match nums with
  | [] -> []
  | (n1 :: ns) ->
    let rest = order_by_points ns in
    let n1_sum = List.fold_left (+) 0 (List.map (fun x -> abs x) (string_of_int n1 |> String.split_on_char ' ')) in
    let rec insert (n : int) (acc : int list) : int list =
      match acc with
      | [] -> [n]
      | (h :: t) as l when n1_sum < (List.fold_left (+) 0 (List.map (fun x -> abs x) (string_of_int h |> String.split_on_char ' '))) ->
        n :: l
      | l ->
        let (h :: t) = l in
        h :: insert n t
    in
    insert n1 rest


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which sorts the given list of integers *)
(*     in ascending order according to the sum of their digits. *)
(*     Note: if there are several items with similar sum of their digits, *)
(*     order them based on their index in original list. *)
(*     For example: *)
(*     >>> order_by_points [1; 11; (-1); (-11); (-12)] *)
(*     [(-1); (-11); 1; (-12); 11] *)
(*     >>> order_by_points [] *)
(*     [] *)
